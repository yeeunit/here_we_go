package com.here_you_go.project.dao;

import java.util.HashMap;

import com.here_you_go.project.model.MemberVO;


public interface IMemberDAO {

	// 로그인 체크
		public String normalLogin(HashMap<String, Object> map);
		// 회원가입
		public void joinMember(MemberVO vo);
		
		// 정보 수정
		public void updateMember(MemberVO vo); 
}
