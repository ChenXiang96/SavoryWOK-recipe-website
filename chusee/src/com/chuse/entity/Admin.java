package com.chuse.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;

@Table(name="admin")
@Entity
public class Admin {
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	private int aid;
	private String username;
	private String password;
	//private String oldpass;不要了
	private String newpass;
	private String ensurepass;
	private String name;
	@Email(message="邮箱格式错误")
    private String email;
    private String phone;
    private String addr;
    private Integer state;
    private String code;
    private String gexingqianming;
    private String uimage;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNewpass() {
		return newpass;
	}
	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}
	public String getEnsurepass() {
		return ensurepass;
	}
	public void setEnsurepass(String ensurepass) {
		this.ensurepass = ensurepass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getGexingqianming() {
		return gexingqianming;
	}
	public void setGexingqianming(String gexingqianming) {
		this.gexingqianming = gexingqianming;
	}
	public String getUimage() {
		return uimage;
	}
	public void setUimage(String uimage) {
		this.uimage = uimage;
	}
	
}
