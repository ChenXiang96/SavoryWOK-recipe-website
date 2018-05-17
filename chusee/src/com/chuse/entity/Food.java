package com.chuse.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="cs_foodinfo")
public class Food {

	private Integer cid;
	private String name;
	private String image;
	private String description;
	//private String title;

	private Set<Material> materialSet = new HashSet<Material>();
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
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

//	public String getTitle() {
//		return title;
//	}
//	public void setTitle(String title) {
//		this.title = title;
//	}
	
	

}
