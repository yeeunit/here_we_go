package com.here_you_go.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.here_you_go.project.dao.IEventDAO;
import com.here_you_go.project.model.EventVO;

@Service
public class EventService implements IEventService {
	
	@Autowired
	@Qualifier("IEventDAO")
	IEventDAO dao;

	@Override
	public ArrayList<EventVO> listAllEvent() {
		// DAO에게 전달받은 결과값을 컨트롤러에 반환 
		return dao.listAllEvent();
	}
	
	@Override
	public EventVO detailViewEvent(String evnNo) {
	  return dao.detailViewEvent(evnNo);
	}

	
}
