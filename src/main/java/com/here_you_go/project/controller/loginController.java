package com.here_you_go.project.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.here_you_go.project.model.BusinessVO;
import com.here_you_go.project.model.MemberVO;
import com.here_you_go.project.service.BusinessService;
import com.here_you_go.project.service.MemberService;

import jakarta.servlet.http.HttpSession;

@Controller
public class loginController {
	
	@Autowired
	MemberService memService;
	@Autowired
	BusinessService businessService;

	// 로그인 선택 폼
	@RequestMapping("/member/loginChoiceForm")
	public String loginChoiceForm() {
		return "member/loginChoice";
	}

	// 일반 회원 폼
	@RequestMapping("/member/normalLoginForm")
	public String normalLoginForm() {
		return "member/normalLogin";
	}

	// 사업자 회원 폼
	@RequestMapping("/member/businessLoginForm")
	public String businessLoginForm() {
		return "member/businessLogin";
	}

	// 일반회원 가입 폼
	@RequestMapping("/member/joinForm")
	public String joinForm() {
		return "member/join";
	}
	
	// 사업자회원 가입 폼
	@RequestMapping("/member/businessJoinForm")
	public String businessJoinForm() {
		return "member/businessJoin";
	}

	// 정보 변경 폼
	@RequestMapping("/member/changeInfoForm")
	public String changeInfoForm() {
		return "member/changeInfo";
	}
	
	// 쿠폰함 폼
	@RequestMapping("/member/couponBoxForm")
	public String couponBoxForm() {
		return "member/couponBox";
	}

	// 일반 로그인
	@ResponseBody
	@RequestMapping("/member/normalLogin")
	public String normalLogin(@RequestParam HashMap<String, Object> param, HttpSession session) {

		// 로그인 체크 결과 : id와 pwd 전달하고 로그인 성공하면 로그인 결과 받음(success/fail)
		String result = memService.normalLogin(param);

		// id와 pwd 일치하면
		if (result.equals("success")) {
			// 로그인 성공하면 HashMap에서 id값 추출해서 세션 변수 설정
			session.setAttribute("sid", param.get("id"));
		}

		return result; 
	}
	
	// 사업자 로그인
	@ResponseBody
	@RequestMapping("/member/businessLogin")
	public String businessLogin(@RequestParam HashMap<String, Object> param, HttpSession session) {
		
		// 로그인 체크 결과 : id와 pwd 전달하고 로그인 성공하면 로그인 결과 받음(success/fail)
		String Bresult = businessService.businessLogin(param);
		
		// id와 pwd 일치하면
		if (Bresult.equals("success")) {
			// 로그인 성공하면 HashMap에서 id값 추출해서 세션 변수 설정
			session.setAttribute("sid", param.get("id"));
		}
		
		return Bresult; // 뷰 페이지 이름이 아닌 데이터 반환 : @ResponseBody
	}
	
	    // 로그아웃
		@RequestMapping("/member/logout")
		public String logout(HttpSession session) {
			session.invalidate();
			return "redirect:/?logout=true"; // 인덱스로 포워딩
		}
		
		// 일반 회원가입
		@RequestMapping("/member/normalJoin")
		public String normalJoin(MemberVO vo) {
			memService.joinMember(vo);		
			return "redirect:/member/loginChoiceForm";
		}
		
		// 사업자 회원가입
		@RequestMapping("/member/businessJoin")
		public String businessJoin(BusinessVO vo) {
			businessService.joinBusiness(vo);		
			return "redirect:/member/loginChoiceForm";
		}
		
		// 회원 정보 수정
		@RequestMapping("/member/changeInfo")
		public String changeInfo(@ModelAttribute MemberVO vo) {
			memService.updateMember(vo);
			return "redirect:/";
		}
}
