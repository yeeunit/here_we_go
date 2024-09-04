package com.here_you_go.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.here_you_go.project.dao.IPopularTravelDAO;
import com.here_you_go.project.model.PopularTravelVO;

@Service
public class PopularTravelService implements IPopularTravelService {

	@Autowired
	@Qualifier("IPopularTravelDAO")
	IPopularTravelDAO dao;
	
	@Override
	public ArrayList<PopularTravelVO> listAllPopularTravel() {
		return dao.listAllPopularTravel();
	}

}
