package com.infotech.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotech.dao.MapDAO;

import java.util.List;


import com.infotech.model.GoogleMap;
import com.infotech.model.User;
import com.infotech.service.MapService;

@Service
public class MapServiceImpl implements MapService {
	
	@Autowired
	private MapDAO mapDAO;
	
	public List<GoogleMap> getMapList(){
		return mapDAO.getMapList();
	}
	
	public List<GoogleMap> getMapListById(Integer map_id){
		return mapDAO.getMapListById(map_id);
	}

	public boolean registerMap(GoogleMap googlemap) {
		boolean isRegister=false;
		boolean saveMap = mapDAO.saveMap(googlemap);
		if(saveMap)
			isRegister=true;
		return isRegister;
	}

	
	
	

}
