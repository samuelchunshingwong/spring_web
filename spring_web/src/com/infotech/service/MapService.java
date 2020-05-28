package com.infotech.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotech.dao.UserDAO;

import java.util.List;


import com.infotech.model.GoogleMap;

@Service
public interface MapService {
	
	public abstract List<GoogleMap> getMapList();
	
}
	
	