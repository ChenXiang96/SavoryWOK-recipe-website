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

@Table(name="category2")
@Entity
public class Category2 implements Serializable{

	private static final long serialVersionUID = 1L;
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private Integer caid;
	private String caname;
	@OrderBy(value="casid")
	@OneToMany(fetch=FetchType.EAGER,mappedBy="category2")
	private Set<CategorySecond2> categorySeconds = new HashSet<CategorySecond2>();
	public Integer getCaid() {
		return caid;
	}
	public void setCaid(Integer caid) {
		this.caid = caid;
	}
	public String getCaname() {
		return caname;
	}
	public void setCaname(String caname) {
		this.caname = caname;
	}
	public Set<CategorySecond2> getCategorySeconds() {
		return categorySeconds;
	}
	public void setCategorySeconds(Set<CategorySecond2> categorySeconds) {
		this.categorySeconds = categorySeconds;
	}
	
	
	
	
	
	
	
	
	
	
}
