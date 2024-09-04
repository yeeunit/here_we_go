package com.here_you_go.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.here_you_go.project.dao.ITravelKorDAO;
import com.here_you_go.project.model.TravelKorVO;

@Service
public class TravelKorService implements ITravelKorService {

	@Autowired
	@Qualifier("ITravelKorDAO")
	ITravelKorDAO dao;
	
	@Override
	public ArrayList<TravelKorVO> listAllTravelKor() {
		return dao.listAllTravelKor();
	}

	@Override
	public TravelKorVO detailViewTravelKor(String trvRegionNo) {
		return dao.detailViewTravelKor(trvRegionNo);
	}

}
