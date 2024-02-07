package com.infotech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.infotech.validator.IsValidPassword;
import com.infotech.validator.NoDuplicateEmail;


@Entity
@Table(name = "user_table")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "uid" ,unique = true)
	private Integer uid;
	
	@NotEmpty
	@Size(min=6,max=20)//{2} means min //base on alphabetical order, max mean {1}
	@Column(name = "username")
	private String username;
	
	
	@Min(value = 12)//, message="Age cannot be less than 12")
	@Max(value = 120)//,  message="Age cannot be larger than 120")
	@NotNull
	@Column(name = "age")
	private Integer age;
	
	@NotEmpty
	@Email
	@Column(name = "email")
	private String email;
	
	@NotEmpty
	@Size(min=6,max=20)//{2} means min //base on alphabetical order, max mean {1}
	@Column(name = "password")
	@IsValidPassword
	private String password;
	
	@Column(name = "admin")
	private String admin;
	
	
	public User(Integer uid, String username, Integer age, String email, String password) {
		super();
		this.uid = uid;
		this.username = username;
		this.age = age;
		this.email = email;
		this.password = password;
	}

	public User() {
		// TODO Auto-generated constructor stub
	}
    
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

}
