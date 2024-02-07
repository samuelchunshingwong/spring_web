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
@Table(name = "map_table")
public class GoogleMap {
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
	@NotEmpty
	@Column(name = "loc_info")
	private String loc_info;
	
	@NotNull
	@Column(name = "lat")
	private float lat;
	
	@NotNull
	@Column(name = "lng")
	private float lng;
	
	
	@Column(name = "wiki_link")
	private String wiki_link;
	
	@Column(name = "map_id")
	private Integer map_id;
	
	
	public GoogleMap(Integer mid, String loc_name, String loc_info, float lat, float lng, String wiki_link, Integer map_id) {
		super();
		this.mid = mid;
		this.loc_name = loc_name;
		this.loc_info = loc_info;
		this.lat = lat;
		this.lng = lng;
		this.wiki_link = wiki_link;
		this.map_id = map_id;
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
	public String getWiki_link() {
		return wiki_link;
	}
	public void setWiki_link(String wiki_link) {
		this.wiki_link = wiki_link;
	}

	public Integer getMap_id() {
		return map_id;
	}

	public void setMap_id(Integer map_id) {
		this.map_id = map_id;
	}
	
	

}
