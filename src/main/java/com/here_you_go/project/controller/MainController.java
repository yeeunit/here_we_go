package com.here_you_go.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.here_you_go.project.model.EventVO;
import com.here_you_go.project.model.PopularTravelVO;
import com.here_you_go.project.model.ProductVO;
import com.here_you_go.project.model.TravelKorVO;
import com.here_you_go.project.service.EventService;
import com.here_you_go.project.service.PopularTravelService;
import com.here_you_go.project.service.ProductService;
import com.here_you_go.project.service.TravelKorService;


@Controller
public class MainController {

	@Autowired
	EventService eventService;
	
	@Autowired
	PopularTravelService popularTravelService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	TravelKorService travelKorService;
	

	@RequestMapping("/")
	public String viewIndex(Model model) {
		
		// 검색 

		// 이벤트 
		ArrayList<EventVO> eventList = eventService.listAllEvent();
		model.addAttribute("eventList", eventList);
		
		// 인기 여행지 
		ArrayList<PopularTravelVO> popularTravelList = popularTravelService.listAllPopularTravel();
		model.addAttribute("popularTravelList", popularTravelList);
		
		
		// 인기 추천 숙소 
		ArrayList<ProductVO> productList = productService.listAllProduct();
		model.addAttribute("productList", productList);
	    
		// 숙소 카테고리 
		  Set<String> prdCtgNames = new LinkedHashSet<>();
		    for (ProductVO product : productList) {
		    	prdCtgNames.add(product.getPrdCtgName());
		    }
        model.addAttribute("prdCtgNames", prdCtgNames);
        
        // 숙소 카테고리별 필터 
        
       
        
        // 국내 여행지 
        ArrayList<TravelKorVO> travelKorList = travelKorService.listAllTravelKor();
        model.addAttribute("travelKorList", travelKorList);
        
        
        

		return "index";
	}
	
	
	 @RequestMapping("/product/prdCtgSearch")
 	public String prdCtgtSearch(
 			@RequestParam HashMap<String, Object> param, 
 			Model model
 			) {
 		System.out.println("param = " + param);
 		
 		ArrayList<ProductVO> prdList = productService.prdCtgSearch(param);
 
 		model.addAttribute("prdList", prdList);		
 		
 		return "index";
 	}
}
