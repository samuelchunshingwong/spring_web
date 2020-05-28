package com.infotech.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotech.dao.UserDAO;

import java.util.List;


import com.infotech.model.User;
import com.infotech.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	
	public List<User> getUserList(){
		return userDAO.getUserList();
	}
	public void createUser(User user) {
   	 userDAO.addUser(user);
    }
	public boolean registerUser(User user) {
		boolean isRegister=false;
		boolean saveUser = userDAO.saveUser(user);
		if(saveUser)
			isRegister=true;
		return isRegister;
	}
	public boolean updateUser(User user) {
		boolean isRegister=false;
		boolean saveUser = userDAO.updateUser(user);
		if(saveUser)
			isRegister=true;
		return isRegister;
	}
	public User validateUserCredential(String email, String password) {
		User student = userDAO.getUserDetailsByEmailAndPassword(email, password);
		return student;
	}
	public boolean validateUserEmail(String email) {
		boolean student = userDAO.checkUserByEmail(email);
		return student;
	}

}
