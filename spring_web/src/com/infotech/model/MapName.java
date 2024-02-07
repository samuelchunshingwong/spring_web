package com.infotech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;



@Entity
@Table(name = "map_name")
public class MapName {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "map_id" ,unique = true)
	private Integer map_id;
	
	//@NotEmpty
	//@Size(min=6,max=20)//{2} means min //base on alphabetical order, max mean {1}
	@NotEmpty
	@Column(name = "name")
	private String name;
	
	
	//@Min(value = 12)//, message="Age cannot be less than 12")
	//@Max(value = 120)//,  message="Age cannot be larger than 120")
	//@NotNull
	
	
	public MapName(Integer map_id, String name) {
		super();
		this.map_id = map_id;
		this.name = name;
		
	}

	public MapName() {
		// TODO Auto-generated constructor stub
	}

	public Integer getMap_id() {
		return map_id;
	}

	public void setMap_id(Integer map_id) {
		this.map_id = map_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


}
