package com.here_you_go.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.here_you_go.project.dao.IFaqDAO;
import com.here_you_go.project.model.FaqVO;

@Service
public class FaqService implements IFaqService {
 //DI 설정
 // MyBatis인 경우에는 @Autowired만 사용하지 않고 @Quarlifier와 같이 사용
 @Autowired
 @Qualifier("IFaqDAO")
 IFaqDAO dao;

  @Override
  public ArrayList<FaqVO> listFaqsByCategory(String faqctgId) {   
    return dao.listFaqsByCategory(faqctgId);
  }

}
