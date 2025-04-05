package com.SavoryWok.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * 
 * Topic 话题发布显示
 * @author dell
 *
 */
@Entity
@Table(name="topic")
public class Topic {
	
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
   private Integer tid;
   private Integer uid;
   private String tcontent;
   private String ttitle;
   private Date time;
   private String timg;
   private String uname;
   private String uimg;
   
public Integer getTid() {
	return tid;
}
public void setTid(Integer tid) {
	this.tid = tid;
}
public Integer getUid() {
	return uid;
}
public void setUid(Integer uid) {
	this.uid = uid;
}
public String getTcontent() {
	return tcontent;
}
public void setTcontent(String tcontent) {
	this.tcontent = tcontent;
}
public String getTtitle() {
	return ttitle;
}
public void setTtitle(String ttitle) {
	this.ttitle = ttitle;
}
public Date getTime() {
	return time;
}
public void setTime(Date time) {
	this.time = time;
}
public String getTimg() {
	return timg;
}
public void setTimg(String timg) {
	this.timg = timg;
}
public String getUname() {
	return uname;
}
public void setUname(String uname) {
	this.uname = uname;
}
public String getUimg() {
	return uimg;
}
public void setUimg(String uimg) {
	this.uimg = uimg;
}

		
}
