package com.infotech.impl;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import org.springframework.stereotype.Repository;

//import com.infotech.model.Student;
import com.infotech.model.CovidMap;
import com.infotech.model.User;
import com.infotech.dao.CovidMapDAO;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;


@Repository("CovidMapDAO")
public class CovidMapDAOImpl implements CovidMapDAO{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private SessionFactory sessionFactory; 
	
private static List<CovidMap> list = null;//in memory database
    
Logger logger=Logger.getLogger("global");

    static {
	 list = new ArrayList<CovidMap>();
	 
	 //List<User> findByCriteria = (List<User>) hibernateTemplate.find( "FROM Users");
	 //list.add(new GoogleMap(1,"���C","���C", 22.3548, 114.126,"https://zh.wikipedia.org/wiki/%E8%91%B5%E9%9D%92%E5%8D%80"));
	 //list.add(new GoogleMap(2,"���C","���C", 22.3715, 114.114,"https://zh.wikipedia.org/wiki/%E8%91%B5%E9%9D%92%E5%8D%80"));
    }
    
     @SuppressWarnings("unchecked")
 	public List<CovidMap> getMapList() {
 		// TODO Auto-generated method stub
    	 DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(CovidMap.class);
    	 
    	 list = (List<CovidMap>) hibernateTemplate.findByCriteria(detachedCriteria);
    	 
    	 logger.info("Check map0 size: " + list.size());
    	 
    	 //list = (List<GoogleMap>) hibernateTemplate.findByCriteria(detachedCriteria);
    	 
    	 //logger.info("Check map0: " + list);
    	 
    	 return list;
 		//return null;
 	}
     public boolean saveMap(CovidMap googlemap) {
 		int id = (Integer)hibernateTemplate.save(googlemap);
 		if(id>0)
 			return true;
 		return false;
 	}
     
	public void dropMap() {
		 Session session = sessionFactory.openSession(); 
    	 //Query query = session.createQuery("delete Product where price > :maxPrice");
    	 //query.setParameter("maxPrice", new Float(1000f));
    	 Query query = session.createQuery("delete FROM CovidMap");
    	  
    	 int result = query.executeUpdate();
    	  
    	 if (result > 0) {
    		 logger.info("Check drop map: OK");
    	 }
    	 session.close();
         /*
    	 DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(CovidMap.class);
    	 
    	 list = (List<CovidMap>) hibernateTemplate.findByCriteria(detachedCriteria);
    	 
    	 logger.info("Check drop map size: " + list.size());
    	 
    	 hibernateTemplate.deleteAll(list);
    	 hibernateTemplate.flush();
    	 */
    	 
     }

	
}
