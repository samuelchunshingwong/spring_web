package com.infotech.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotech.dao.MapDAO;
import com.infotech.dao.MapNameDAO;

import java.util.List;


import com.infotech.model.GoogleMap;
import com.infotech.model.MapName;
import com.infotech.model.User;
import com.infotech.service.MapNameService;
import com.infotech.service.MapService;

@Service
public class MapNameServiceImpl implements MapNameService {
	
	@Autowired
	private MapNameDAO mapnameDAO;
	
	public List<MapName> getMapNameList(){
		return mapnameDAO.getMapNameList();
	}
	
	public MapName getMapNameById(Integer map_id){
		return mapnameDAO.getMapNameById(map_id);
	}

	public boolean registerMapName(MapName map) {
		boolean isRegister=false;
		boolean saveMap = mapnameDAO.saveMapName(map);
		if(saveMap)
			isRegister=true;
		return isRegister;
	}

	
	
	

}
