package com.here_you_go.project.dao;

import java.util.ArrayList;

import com.here_you_go.project.model.FaqVO;

public interface IFaqDAO {
 
  // 카테고리별 FAQ 조회
  public ArrayList<FaqVO> listFaqsByCategory(String faqctgId);

}
