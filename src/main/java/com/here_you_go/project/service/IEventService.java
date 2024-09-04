package com.here_you_go.project.service;

import java.util.ArrayList;
import com.here_you_go.project.model.EventVO;

//요청 : client(View) -> Controller -> Service -> DAO -> DB
//응답 : client(View) <- Controller <- Service <- DAO <- DB

public interface IEventService {
	// 전체 이벤트 조회 : DAO에게 요청 -> DB에서 전체 이벤트(VO 여러 개(ArrayList)) 찾아서 반환
	public ArrayList<EventVO> listAllEvent(); 
	
	
	// 이벤트 상세 조회
	public EventVO detailViewEvent(String evnNo);
}
