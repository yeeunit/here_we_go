package com.here_you_go.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.here_you_go.project.model.EventVO;
import com.here_you_go.project.service.EventService;

@Controller
public class EventController {
  
  @Autowired
  EventService eventService;
  
  // 이벤트 페이지 열기
  @RequestMapping("/event/eventMain") 
  public String listAllEvent(Model model) {
    ArrayList<EventVO> eventList = eventService.listAllEvent();
    model.addAttribute("eventList", eventList);
    return "event/eventMain"; 
  }
  
  // 이벤트 상세 정보
  @RequestMapping("/event/detailViewEvent/{evnNo}")
  public String detailViewEvent(@PathVariable String evnNo, Model model) {
  
    EventVO event = eventService.detailViewEvent(evnNo);
     
    // 뷰 페이지에 출력하기 위해 Model 설정
    model.addAttribute("event", event);
     
    return "event/eventDetailView";
  }
  
  
}
