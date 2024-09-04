package com.here_you_go.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.here_you_go.project.model.BoardVO;

public interface IBoardDAO {
  
 //전체 게시글 조회 : DB에서 전체 상품(VO 여러 개(ArrayList)) 찾아서 반환
 public ArrayList<BoardVO> listAllBoard(); 
 
 // 게시글 등록
 public void insertBoard(BoardVO vo);
 
 // 게시글  수정
 public void updateBoard(BoardVO vo);
 
 // 게시글 삭제 
 public void deleteBoard(String bodNo); 
 
 // 상세 게시글 조회
 public BoardVO detailViewBoard(String bodNo);
 
 //상품 검색
 public ArrayList<BoardVO> boardSearch(HashMap<String, Object> map);
}
