package com.infotech.dao;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

//import com.infotech.model.Student;
import com.infotech.model.MapName;


@Repository
public interface MapNameDAO {
	public abstract boolean saveMapName(MapName map);
	//public User getUserDetailsByEmailAndPassword(String email,String password);
	public abstract List<MapName> getMapNameList();
	
	public MapName getMapNameById(Integer map_id);
	
}

