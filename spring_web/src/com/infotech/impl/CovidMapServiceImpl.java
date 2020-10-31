package com.infotech.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotech.dao.CovidMapDAO;

import java.util.List;


import com.infotech.model.CovidMap;
import com.infotech.model.User;
import com.infotech.service.CovidMapService;

@Service
public class CovidMapServiceImpl implements CovidMapService {
	
	@Autowired
	private CovidMapDAO mapDAO;
	
	public List<CovidMap> getMapList(){
		return mapDAO.getMapList();
	}
	
	public List<CovidMap> getMapListByType(){
		return mapDAO.getMapListByType();
	}

	public boolean registerCovidMap(CovidMap covidmap) {
		boolean isRegister=false;
		boolean saveMap = mapDAO.saveMap(covidmap);
		if(saveMap)
			isRegister=true;
		return isRegister;
	}
	public void dropCovidMap() {
		
		mapDAO.dropMap();
		
	}

	
	
	

}
