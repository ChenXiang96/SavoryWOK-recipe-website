package com.chuse.entity;

import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * 
 * Product代表健康显示菜品先
 * @author lenovo
 *
 */

public class Product {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
   private Integer pid;
   private String pname;
   private Date pdate;
public Integer getPid() {
	return pid;
}
public void setPid(Integer pid) {
	this.pid = pid;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public Date getPdate() {
	return pdate;
}
public void setPdate(Date pdate) {
	this.pdate = pdate;
}



   
   
}
