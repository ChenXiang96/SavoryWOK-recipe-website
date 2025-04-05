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

@Table(name="categorysecond2")
@Entity
public class CategorySecond2 implements Serializable{

private static final long serialVersionUID = 1L;
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private Integer casid;
	private String casname;
	// 所属一级分类.存的是一级分类的对象.
	@JoinColumn(name="caid")
	@ManyToOne
	private Category2 category2;
	@OneToMany(fetch=FetchType.LAZY,mappedBy="categorySecond2")
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
	public Category2 getCategory2() {
		return category2;
	}
	public void setCategory2(Category2 category2) {
		this.category2 = category2;
	}
	public Set<Subject> getSubjects() {
		return subjects;
	}
	public void setSubjects(Set<Subject> subjects) {
		this.subjects = subjects;
	}

	
}
