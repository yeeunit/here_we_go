package com.here_you_go.project.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.here_you_go.project.dao.IOrderDAO;
import com.here_you_go.project.model.MemberVO;
import com.here_you_go.project.model.OrderInfoVO;
import com.here_you_go.project.model.ProductVO;

@Service
public class OrderService implements IOrderService {
	@Autowired
	@Qualifier("IOrderDAO")
	IOrderDAO dao;

	@Override
	public MemberVO getMemberInfo(String memId) {
		return dao.getMemberInfo(memId);
	}
	
	@Override
	public ProductVO getProductInfo(String prdNo) {
		return dao.getProductInfo(prdNo);
	}
	
	@Override
	public void insertOrderInfo(OrderInfoVO ordInfoVo) {
		dao.insertOrderInfo(ordInfoVo);
	}

}
