package com.here_you_go.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.here_you_go.project.model.BoardVO;
import com.here_you_go.project.model.FaqVO;
import com.here_you_go.project.service.BoardService;
import com.here_you_go.project.service.FaqService;
import com.here_you_go.project.service.MemberService;

import jakarta.servlet.http.HttpSession;

@Controller
public class BoardController {
  
   @Autowired
   FaqService faqService;
   @Autowired
   BoardService boardService;
   @Autowired
   MemberService memService;
   
   //시작 시 index 페이지 열기 삭제 
   
   // 고객센터 폼 열기
   @RequestMapping("/customer/customerMain") 
   public String customer() {
     return "customer/customerMain"; 
   }
   
   // 게시판 폼 열기
   @RequestMapping("/customer/board") 
   public String board(Model model) {
     ArrayList<BoardVO> boardList = boardService.listAllBoard();

     model.addAttribute("boardList", boardList);

     return "customer/board"; 
   }
   
   // 게시글 작성 폼 열기
   @RequestMapping("/customer/boardWrite")
   public String boardWrite(HttpSession session, Model model) {
     // 세션에서 사용자 정보 가져오기
     String userId = (String) session.getAttribute("sid");

     // 로그인 확인
     if (userId == null) {
         // 로그인하지 않은 경우 로그인 페이지로 리다이렉트
         return "redirect:/member/loginChoiceForm";
     }

     // 사용자 정보가 있으면, 필요한 데이터를 모델에 추가
     model.addAttribute("userId", userId);

     return "customer/boardWrite";
   }

   /////////////////////////////////////////////////////////////////////////////////////////////
   
   // FAQ // 안열림 
   @ResponseBody
   @RequestMapping("/customer/faqListView")
   public ArrayList<FaqVO> listFaqsByCategory(@RequestParam String faqctgId) {
       ArrayList<FaqVO> faqList = faqService.listFaqsByCategory(faqctgId);
       return faqList;
   }
   
   // 전체 게시글 조회
   @RequestMapping("/customer/listAllBoard")
   public String  listAllBoard(Model model) {
     ArrayList<BoardVO> boardList = boardService.listAllBoard();
     model.addAttribute("boardList", boardList);

     return "customer/board";
   }
   
   // 상세 게시글 조회
   @RequestMapping("/customer/detailViewBoard/{bodNo}")
   public String detailViewBoard(@PathVariable String bodNo, Model model) {
     // 서비스에게 상품번호 전달하고, 해당 상품 데이터 받아오기
     BoardVO board = boardService.detailViewBoard(bodNo);
     
     // 뷰 페이지에 출력하기 위해 Model 설정
     model.addAttribute("board", board);
     
     return "customer/boardTextView";
   }
   
   // 게시글 등록  // 안열림 
  @RequestMapping("/customer/insertBoard")
  public String insertBoard(BoardVO vo, HttpSession session) {
    // 세션에서 로그인한 사용자 아이디 가져오기
    String logInUser = (String) session.getAttribute("sid");
    
    // BoardVO 객체에 사용자 아이디 설정
    vo.setMemId(logInUser);
    
    boardService.insertBoard(vo);   
    
    return "redirect:/customer/listAllBoard";
  } 
  
  // 게시글 수정 화면 열기
  @RequestMapping("/customer/updateBoardForm/{bodNo}")
  public String updateBoardForm2(@PathVariable String bodNo, Model model) {
    // 서비스에게 상품번호 전달하고, 해당 상품 데이터 받아오기
    BoardVO board = boardService.detailViewBoard(bodNo);
    
    // 뷰 페이지에 출력하기 위해 Model 설정
    model.addAttribute("board", board);
    
    return "customer/updateBoardForm"; // 폼에 데이터 출력
  }

  
  // 수정된 데이터 받아서 DB에 저장
  @ResponseBody
  @RequestMapping("/customer/updateBoard")
  public String updateBoard(BoardVO vo, @RequestParam String memPwd, HttpSession session) {
    String logInUser = (String) session.getAttribute("sid");

    if (logInUser == null) {
        return "fail"; // 로그인 되어 있지 않으면 실패 반환
    }

    String result = memService.checkPassword(logInUser, memPwd);

    if ("success".equals(result)) {
        vo.setMemId(logInUser); // 게시글 작성자 ID 설정
        boardService.updateBoard(vo); // 게시글 수정 서비스 호출
    }

    return result; // success 또는 fail 반환
}

  
  // 상품 정보 삭제 
  // 상품번호 전달 받아서 서비스에게 전달 -> dao -> Mapper -> DB에서 삭제
  // 삭제 후 전체 상품 정보 조회 화면으로 이동 : 포워딩
  @RequestMapping("/customer/deleteBoard/{bodNo}")
  public String deleteBoard(@PathVariable String bodNo) {
    boardService.deleteBoard(bodNo);  
    return "redirect:/customer/listAllBoard";
  }
   
  // 게시글 검색 // 안열림 
  @ResponseBody
  @RequestMapping("/customer/boardSearch") 
  public ArrayList<BoardVO> boardSearch(@RequestParam HashMap<String, Object> param) {
    ArrayList<BoardVO> boardList = boardService.boardSearch(param);
    return boardList;
  }

  
}






