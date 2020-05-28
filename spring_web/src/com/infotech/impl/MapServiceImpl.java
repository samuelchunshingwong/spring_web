package com.infotech.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotech.dao.MapDAO;

import java.util.List;


import com.infotech.model.GoogleMap;
import com.infotech.service.MapService;

@Service
public class MapServiceImpl implements MapService {
	
	@Autowired
	private MapDAO mapDAO;
	
	public List<GoogleMap> getMapList(){
		return mapDAO.getMapList();
	}

	

}
