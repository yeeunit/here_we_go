package com.here_you_go.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.here_you_go.project.dao.IBoardDAO;
import com.here_you_go.project.model.BoardVO;

@Service
public class BoardService implements IBoardService {
  // DI 설정
  // MyBatis인 경우에는 @Autowired만 사용하지 않고 @Quarlifier와 같이 사용
  @Autowired
  @Qualifier("IBoardDAO")
  IBoardDAO dao;
  
  @Override
  public ArrayList<BoardVO> listAllBoard() { // 전체 게시글 조회
    return dao.listAllBoard();
  }

  @Override
  public void insertBoard(BoardVO vo) { // 게시글 추가
    dao.insertBoard(vo);
  }
  
  @Override
  public void updateBoard(BoardVO vo) {
    dao.updateBoard(vo);
  }
  
  @Override
  public void deleteBoard(String bodNo) {
    dao.deleteBoard(bodNo);
  }
  
  @Override
  public BoardVO detailViewBoard(String bodNo) {
    return dao.detailViewBoard(bodNo);
  }
  
  @Override
  public ArrayList<BoardVO> boardSearch(HashMap<String, Object> map) {
    return dao.boardSearch(map);
  }
}
