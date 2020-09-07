package com.infotech.dao;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

//import com.infotech.model.Student;
import com.infotech.model.CovidMap;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;

@Repository
public interface CovidMapDAO {
	public abstract boolean saveMap(CovidMap covidmap);
	//public User getUserDetailsByEmailAndPassword(String email,String password);
	public abstract List<CovidMap> getMapList();
	//public abstract boolean checkUserByEmail(String email);
	//public abstract void addUser(User user);
	//public abstract boolean updateUser(User user);
}

