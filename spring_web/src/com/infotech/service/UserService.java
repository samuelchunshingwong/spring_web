package com.infotech.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotech.dao.UserDAO;

import java.util.List;


import com.infotech.model.User;

@Service
public interface UserService {
	public abstract User validateUserCredential(String email,	String password);
	public abstract boolean registerUser(User user);
	public abstract boolean updateUser(User user);
	public abstract boolean validateUserEmail(String email);
	public abstract List<User> getListByName(String name_input);
	public abstract List<User> getUserList();
	public abstract void createUser(User user);
}
	
	