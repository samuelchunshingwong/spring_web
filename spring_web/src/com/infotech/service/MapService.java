package com.infotech.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotech.dao.UserDAO;

import java.util.List;


import com.infotech.model.GoogleMap;
import com.infotech.model.User;

@Service
public interface MapService {
	
	public abstract List<GoogleMap> getMapList();
	public abstract List<GoogleMap> getMapListById(Integer map_id);
	public abstract boolean registerMap(GoogleMap googlemap);
	
}
	
	