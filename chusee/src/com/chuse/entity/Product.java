package com.chuse.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 
 * Product代表显示的菜品
 * @author lenovo
 *
 */
//这是一行注释
@Table(name="product")
@Entity
public class Product implements java.io.Serializable{
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
   private Integer pid;
   private String pname;
   private String image;
   private String pdesc;
   private Date pdate;
   
   
   //一级分类的外键：使用一级分类的对象
   @JoinColumn(name="cid")
   @ManyToOne
   public String getPcontent() {
	return pcontent;
}
public void setPcontent(String pcontent) {
	this.pcontent = pcontent;
}
private String pcontent;
   private Integer is_hot;
   
   
   
   
public Integer getIs_hot() {
	return is_hot;
}
public void setIs_hot(Integer is_hot) {
	this.is_hot = is_hot;
}
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
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public String getPdesc() {
	return pdesc;
}
public void setPdesc(String pdesc) {
	this.pdesc = pdesc;
}
public Date getPdate() {
	return pdate;
}
public void setPdate(Date pdate) {
	this.pdate = pdate;
}




   
   
}
