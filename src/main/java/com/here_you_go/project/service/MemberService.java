package com.here_you_go.project.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.here_you_go.project.dao.IMemberDAO;
import com.here_you_go.project.model.MemberVO;

@Service
public class MemberService implements IMemberService {

	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;

	@Autowired
	PasswordEncoder pwdEncoder;

	@Override
	public String normalLogin(HashMap<String, Object> map) {
		// (1) id를 전달해서 존재하면 DB에 있는 비밀번호(암호화된 비밀번호)를 반환 받음
		String encodedPwd = dao.normalLogin(map);

		// (2) 입력해서 전달받은 평문의 비밀번호와 암호화된 비밀번호 비교해서 일치하는지 체크
		// matches(평문, 암호문) : 일치 여부 반환
		String result = "fail";
		if (encodedPwd != null && pwdEncoder.matches((String) map.get("pwd"), encodedPwd)) {
			result = "success";
		}
		return result;
	}
	

	@Override
	public void joinMember(MemberVO vo) {
		// vo에서 비밀번호 추출해서 암호화 한 후
		// setter 사용해서 암호화된 값으로 설정한 다음
		// vo를 mapper에게 전달
		String encodedPwd = pwdEncoder.encode(vo.getMemPwd());
		vo.setMemPwd(encodedPwd);

		dao.joinMember(vo);

	}
	
	@Override
	public void updateMember(MemberVO vo) {
		dao.updateMember(vo);
	}
	
	@Override
	//회원 비밀번호 검증 메서드
	public String checkPassword(String memId, String inputPwd) {
    HashMap<String, Object> map = new HashMap<>();
    map.put("id", memId);
    map.put("pwd", inputPwd);

    String encodedPwd = dao.normalLogin(map);

    String result = "fail";
    if (encodedPwd != null && BCrypt.checkpw(inputPwd, encodedPwd)) {
        result = "success";
    }
    return result;
}


}
