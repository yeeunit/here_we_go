package com.here_you_go.project.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.here_you_go.project.dao.IBusinessDAO;
import com.here_you_go.project.model.BusinessVO;

@Service
public class BusinessService implements IBusinessService {

	@Autowired
	@Qualifier("IBusinessDAO")
	IBusinessDAO dao;

	@Autowired
	PasswordEncoder pwdEncoder;
	
	@Override
	public String businessLogin(HashMap<String, Object> map) {
		// (1) id를 전달해서 존재하면 DB에 있는 비밀번호(암호화된 비밀번호)를 반환 받음
		String encodedPwd = dao.businessLogin(map);

		// (2) 입력해서 전달받은 평문의 비밀번호와 암호화된 비밀번호 비교해서 일치하는지 체크
		// matches(평문, 암호문) : 일치 여부 반환
		String Bresult = "fail";
		if (encodedPwd != null && pwdEncoder.matches((String) map.get("pwd"), encodedPwd)) {
			Bresult = "success";
		}
		return Bresult;
	}

	@Override
	public void joinBusiness(BusinessVO vo) {
		String encodedPwd = pwdEncoder.encode(vo.getComPwd());
		vo.setComPwd(encodedPwd);

		// dao.joinBusiness(vo);
		dao.joinBusiness(vo);

	}

}
