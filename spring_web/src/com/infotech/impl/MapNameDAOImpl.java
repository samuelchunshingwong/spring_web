package com.infotech.impl;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import org.springframework.stereotype.Repository;

//import com.infotech.model.Student;
import com.infotech.model.GoogleMap;
import com.infotech.model.MapName;

import com.infotech.dao.MapNameDAO;



import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;


@Repository("MapNameDAO")
public class MapNameDAOImpl implements MapNameDAO{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
private static List<MapName> list = null;//in memory database
    
Logger logger=Logger.getLogger("global");

    static {
	 list = new ArrayList<MapName>();
	 
    }
    
     @SuppressWarnings("unchecked")
 	public List<MapName> getMapNameList() {
 		// TODO Auto-generated method stub
    	 DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(MapName.class);
    	 
    	 list = (List<MapName>) hibernateTemplate.findByCriteria(detachedCriteria);
    	 
    	 logger.info("Check MapName size: " + list.size());
    	 
    	 //list = (List<GoogleMap>) hibernateTemplate.findByCriteria(detachedCriteria);
    	 
    	 //logger.info("Check map0: " + list);
    	 
    	 return list;
 		//return null;
 	}
     @SuppressWarnings("unchecked")
   	public MapName getMapNameById(Integer map_id) {
   		// TODO Auto-generated method stub
      	 DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(MapName.class);
      	 detachedCriteria.add(Restrictions.eq("map_id", map_id));
      	 
      	 list = (List<MapName>) hibernateTemplate.findByCriteria(detachedCriteria);
      	 
      	 if(list !=null && list.size()>0)
    		return list.get(0);
    		else
    			return null;
      	 
      	 //return list;
   		//return null;
   	}
   
     public boolean saveMapName(MapName map) {
 		int id = (Integer)hibernateTemplate.save(map);
 		if(id>0)
 			return true;
 		return false;
 	}

	
}
