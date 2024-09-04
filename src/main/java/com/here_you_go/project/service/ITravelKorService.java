package com.here_you_go.project.service;

import java.util.ArrayList;
import com.here_you_go.project.model.TravelKorVO;

public interface ITravelKorService {
	
	// 국내 여행지 리스트 
	public ArrayList<TravelKorVO> listAllTravelKor();
	
	// 국내 여행지 1개 지역 상세 
	public TravelKorVO detailViewTravelKor(String trvRegionNo);

}
