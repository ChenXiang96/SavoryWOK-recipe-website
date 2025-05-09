package com.SavoryWok.entity;

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

@Table(name="themes")
@Entity
public class Themes implements Serializable{

	private static final long serialVersionUID = 1L;
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private Integer caid;
	private String caname;
	private String title_description;
	private String title_banner_img;
	
	@OrderBy(value="casid")
	@OneToMany(fetch=FetchType.EAGER,mappedBy="themes")
	private Set<Subthemes> categorySeconds = new HashSet<Subthemes>();
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
	
	public String getTitle_description() {
		return title_description;
	}
	public void setTitle_description(String title_description) {
		this.title_description = title_description;
	}
	
	public String getTitle_banner_img() {
		return title_banner_img;
	}
	public void setTitle_banner_img(String title_banner_img) {
		this.title_banner_img = title_banner_img;
	}
	
	public Set<Subthemes> getCategorySeconds() {
		return categorySeconds;
	}
	public void setCategorySeconds(Set<Subthemes> categorySeconds) {
		this.categorySeconds = categorySeconds;
	}
	

}
