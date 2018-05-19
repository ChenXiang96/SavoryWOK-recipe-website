package com.chuse.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Table(name="cs_user")
@Entity
public class User {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int uid;
	private String u_name;
	private String u_password;
	private String name;
    private String u_email;
    private String u_phone;
    private String u_addr;
    private Integer u_state;
    private String u_code;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getU_addr() {
		return u_addr;
	}
	public void setU_addr(String u_addr) {
		this.u_addr = u_addr;
	}
	public Integer getU_state() {
		return u_state;
	}
	public void setU_state(Integer u_state) {
		this.u_state = u_state;
	}
	public String getU_code() {
		return u_code;
	}
	public void setU_code(String u_code) {
		this.u_code = u_code;
	}
    
	@Override
	public String toString() {
		return "User [uid=" + uid + ", u_name=" + u_name + ", u_password=" + u_password + ", name=" + name + ", u_email="
				+ u_email + ", u_phone=" + u_phone + ", u_addr=" + u_addr + ", u_state=" + u_state + ", u_code=" + u_code + "]";
	}	
	
//	public void sing(){
//		System.out.println("大户");
//	}
	
}
