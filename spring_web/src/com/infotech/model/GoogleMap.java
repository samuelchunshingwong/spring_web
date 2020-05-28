package com.infotech.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "map_table")
public class GoogleMap {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "mid" ,unique = true)
	private Integer mid;
	
	//@NotEmpty
	//@Size(min=6,max=20)//{2} means min //base on alphabetical order, max mean {1}
	@Column(name = "loc_name")
	private String loc_name;
	
	
	//@Min(value = 12)//, message="Age cannot be less than 12")
	//@Max(value = 120)//,  message="Age cannot be larger than 120")
	//@NotNull
	@Column(name = "loc_info")
	private String loc_info;
	

	@Column(name = "lat")
	private double lat;
	
	@Column(name = "lng")
	private double lng;
	
	
	@Column(name = "wiki_link")
	private String wiki_link;
	
	
	public GoogleMap(Integer mid, String loc_name, String loc_info, double lat, double lng, String wiki_link) {
		super();
		this.mid = mid;
		this.loc_name = loc_name;
		this.loc_info = loc_info;
		this.lat = lat;
		this.lng = lng;
		this.wiki_link = wiki_link;
	}

	public GoogleMap() {
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
	public double getLat() {
		return lat;
	}
	public void setLat(Float lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(Float lng) {
		this.lng = lng;
	}
	public String getWiki_link() {
		return wiki_link;
	}
	public void setWiki_link(String wiki_link) {
		this.wiki_link = wiki_link;
	}
	
	

}
