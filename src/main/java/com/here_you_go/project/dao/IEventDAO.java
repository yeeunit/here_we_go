package com.here_you_go.project.dao;

import java.util.ArrayList;

import com.here_you_go.project.model.EventVO;

public interface IEventDAO {

	// 전체 이벤트 조회 : DB에서 전체 이벤트(VO 여러 개(ArrayList)) 찾아서 반환
	public ArrayList<EventVO> listAllEvent(); 
	
	// 이벤트 상세 조회
	  public EventVO detailViewEvent(String evnNo);

}
