package com.here_you_go.project.dao;


import com.here_you_go.project.model.MemberVO;
import com.here_you_go.project.model.OrderInfoVO;
import com.here_you_go.project.model.ProductVO;

public interface IOrderDAO {
	public MemberVO getMemberInfo(String memId);
	public ProductVO getProductInfo(String prdNo);
	public void insertOrderInfo(OrderInfoVO ordInfoVo);
}
