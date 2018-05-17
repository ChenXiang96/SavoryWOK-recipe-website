package com.chuse.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



public class Material {

	private Integer sid;
	private String name;
	private String image;
	private String description;
	private String title;
	

	private Set<Food> orderSet = new HashSet<Food>();


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}


	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public Set<Food> getOrderSet() {
		return orderSet;
	}
	public void setOrderSet(Set<Food> orderSet) {
		this.orderSet = orderSet;
	}

}
