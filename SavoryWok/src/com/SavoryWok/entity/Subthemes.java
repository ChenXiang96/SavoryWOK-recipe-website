package com.SavoryWok.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Table(name="subthemes")
@Entity
public class Subthemes implements Serializable{

private static final long serialVersionUID = 1L;
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private Integer casid;
	private String casname;
	private String title_banner_img;
	private String subtitle_description;

	@JoinColumn(name="caid")
	@ManyToOne
	private Themes themes;
	@OneToMany(fetch=FetchType.LAZY,mappedBy="subthemes")
	private Set<Subject> subjects = new HashSet<Subject>();
	public Integer getCasid() {
		return casid;
	}
	public void setCasid(Integer casid) {
		this.casid = casid;
	}
	public String getCasname() {
		return casname;
	}
	public void setCasname(String casname) {
		this.casname = casname;
	}
	
	public String getSubtitle_description() {
		return subtitle_description;
	}
	public void setSubtitle_description(String subtitle_description) {
		this.subtitle_description = subtitle_description;
	}
	
	public Themes getThemes() {
		return themes;
	}
	public void setThemes(Themes themes) {
		this.themes = themes;
	}
	
	public String getTitle_banner_img() {
		return title_banner_img;
	}
	public void setTitle_banner_img(String title_banner_img) {
		this.title_banner_img = title_banner_img;
	}
	
	public Set<Subject> getSubjects() {
		return subjects;
	}
	public void setSubjects(Set<Subject> subjects) {
		this.subjects = subjects;
	}

	
}
