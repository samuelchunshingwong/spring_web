package com.infotech.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import java.util.List;


import com.infotech.model.CovidMap;


@Service
public interface CovidMapService {
	
	public abstract List<CovidMap> getMapList();
	public abstract boolean registerCovidMap(CovidMap covidmap);
	
}
	
	