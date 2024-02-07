package com.infotech.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotech.dao.UserDAO;

import java.util.List;


import com.infotech.model.GoogleMap;
import com.infotech.model.MapName;
import com.infotech.model.User;

@Service
public interface MapNameService {
	
	public abstract List<MapName> getMapNameList();
	public abstract MapName getMapNameById(Integer map_id);
	public abstract boolean registerMapName(MapName map);
	
}
	
	