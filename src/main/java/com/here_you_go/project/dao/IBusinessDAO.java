package com.here_you_go.project.dao;

import java.util.HashMap;

import com.here_you_go.project.model.BusinessVO;


public interface IBusinessDAO {

	public String businessLogin(HashMap<String, Object> map);
	// 회원가입
	public void joinBusiness(BusinessVO vo);
}
