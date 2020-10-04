package com.infotech.model;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;



@Entity
@Table(name = "covid_map")
public class CovidMap {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "mid" ,unique = true)
	private Integer mid;
	
	//@NotEmpty
	//@Size(min=6,max=20)//{2} means min //base on alphabetical order, max mean {1}
	@NotEmpty
	@Column(name = "loc_name")
	private String loc_name;
	
	
	//@Min(value = 12)//, message="Age cannot be less than 12")
	//@Max(value = 120)//,  message="Age cannot be larger than 120")
	//@NotNull
	@Column(name = "loc_info")
	private String loc_info;
	
	@Column(name = "district")
	private String district;
	
	

	@NotNull
	@Column(name = "lat")
	private float lat;
	
	@NotNull
	@Column(name = "lng")
	private float lng;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "visit_date")
	private Date visit_date;
	
	@Column(name = "residential")
	private int res;
	

	

	public CovidMap(Integer mid, String loc_name, String district, String loc_info, float lat, float lng, Date visit_date, Integer res) {
		super();
		this.mid = mid;
		this.loc_name = loc_name;
		this.district = district;
		this.loc_info = loc_info;
		this.lat = lat;
		this.lng = lng;
		this.visit_date = visit_date;
		this.res = res;
	}

	public CovidMap() {
		// TODO Auto-generated constructor stub
	}
    
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public String getLoc_name() {
		return loc_name;
	}
	public void setLoc_name(String loc_name) {
		this.loc_name = loc_name;
	}
	public String getLoc_info() {
		return loc_info;
	}
	public void setLoc_info(String loc_info) {
		this.loc_info = loc_info;
	}
	public float getLat() {
		return lat;
	}
	public void setLat(Float lat) {
		this.lat = lat;
	}
	public float getLng() {
		return lng;
	}
	public void setLng(Float lng) {
		this.lng = lng;
	}
	
	public Date getVisit_date() {
		return visit_date;
	}

	public void setVisit_date(Date visit_date) {
		this.visit_date = visit_date;
	}
	public Integer getRes() {
		return res;
	}

	public void setRes(Integer res) {
		this.res = res;
	}
	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

}
