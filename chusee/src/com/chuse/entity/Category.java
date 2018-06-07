package com.chuse.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

@Table(name="category")
@Entity
public class Category implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private Integer cid;
	private String cname;
	
	@OneToMany(fetch=FetchType.EAGER,mappedBy="category")

	
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}

	
	
}
