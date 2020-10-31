package com.infotech.impl;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import org.springframework.stereotype.Repository;

import com.infotech.model.CovidMap;
//import com.infotech.model.Student;
import com.infotech.model.User;
import com.infotech.dao.UserDAO;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
@Repository("UserDAO")
public class UserDAOImpl implements UserDAO{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	Logger logger=Logger.getLogger("global");
	
private static List<User> list = null;//in memory database
     static {
    	 list = new ArrayList<User>();
    	 
    	 //List<User> findByCriteria = (List<User>) hibernateTemplate.find( "FROM Users");
    	 //list.add(new User("Sam",27,"samuel@gmail"));
    	 //list.add(new User("Sam1",28,"samuel1@gmail"));
     }
     @SuppressWarnings("unchecked")
	public List<User> getUserList(){
    	 DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(User.class);
    	 list = (List<User>) hibernateTemplate.findByCriteria(detachedCriteria);
    	 
    	 return list;
     }
     
	public void addUser(User user) {
		list.add(user);
		//hibernateTemplate.save(user);
	}
	
	//@Override
	public boolean saveUser(User user) {
		int id = (Integer)hibernateTemplate.save(user);
		if(id>0)
			return true;
		return false;
	}
    @SuppressWarnings("unchecked")
	public List<User> getListByName(String name_input) {
 		// TODO Auto-generated method stub
   	 Session session = sessionFactory.openSession(); 
   	 //Query query = session.createQuery("delete Product where price > :maxPrice");
   	 //query.setParameter("maxPrice", new Float(1000f));
   	logger.info("Check name: " + name_input);
   	 Query query = session.createQuery("FROM User WHERE email like :name_input");
   	 query.setParameter("name_input", "%"+name_input+"%");
   	 list = (List<User>) query.list();
   	  
   	 
   	 session.close();
   	 
    	 
    	 
    	 logger.info("Check name size: " + list.size());
    	 
    	 //list = (List<GoogleMap>) hibernateTemplate.findByCriteria(detachedCriteria);
    	 
    	 //logger.info("Check map0: " + list);
    	 
    	 return list;
 		//return null;
 	}
	public boolean updateUser(User user) {
		
		//User a = hibernateTemplate.get(User.class, user.getUid());
		//a.setAge(22);
		//hibernateTemplate.saveOrUpdate(a);
		/*
		Configuration configuration = new Configuration();
        configuration.configure("hibernate.cfg.xml");
        SessionFactory factory = configuration.buildSessionFactory();
        Session session = factory.openSession();

        Transaction tx = session.beginTransaction();

        //User student = new User();
        //student.setId(111);
        //student.setName("chandra shekhar");
        //student.setRollNumber(8469);
        hibernateTemplate.update(user);
        tx.commit();
        //session.close();
*/
			return true;
		//return false;
	}
     
	@SuppressWarnings("unchecked")
	public User getUserDetailsByEmailAndPassword(String email,String password){
		DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(User.class);
		detachedCriteria.add(Restrictions.eq("email", email));
		detachedCriteria.add(Restrictions.eq("password", password));
		List<User> findByCriteria = (List<User>) hibernateTemplate.findByCriteria(detachedCriteria);
		if(findByCriteria !=null && findByCriteria.size()>0)
		return findByCriteria.get(0);
		else
			return null;
	}
	@SuppressWarnings("unchecked")
	public boolean checkUserByEmail(String email){
		DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(User.class);
		detachedCriteria.add(Restrictions.eq("email", email));//DetachedCriteria how to make or instead of and
		//detachedCriteria.add(Restrictions.eq("password", password));
		List<User> findByCriteria = (List<User>) hibernateTemplate.findByCriteria(detachedCriteria);
		if(findByCriteria !=null && findByCriteria.size()>0)
		return false;
		else
			return true;
	}
}
