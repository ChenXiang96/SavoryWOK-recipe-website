package com.chuse.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



/**
 * 
 * Comment 评论发布显示
 * @author dell
 *
 */
@Entity
@Table(name="comment")
public class Comment {

	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	private int ctid;
	private String cdes;
	private Date ctime;
	private int tid;
	private int uid;
	private String uname;
	private String uimg;
	public int getCtid() {
		return ctid;
	}
	public void setCtid(int ctid) {
		this.ctid = ctid;
	}
	public String getCdes() {
		return cdes;
	}
	public void setCdes(String cdes) {
		this.cdes = cdes;
	}
	public Date getCtime() {
		return ctime;
	}
	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
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
