package com.SavoryWok.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name="subject")
@Entity
public class Subject implements java.io.Serializable {
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	   private Integer pid;
	   private Integer is_hot;
	   private String pname;
	   private String image;
	   private String pdesc;
	   private Date pdate;
	   private String pcontent;

		@JoinColumn(name="casid")
		@ManyToOne
		private Subthemes subthemes;

	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(Integer is_hot) {
		this.is_hot = is_hot;
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
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public Subthemes getSubthemes() {
		return subthemes;
	}
	public void setSubthemes(Subthemes subthemes) {
		this.subthemes = subthemes;
	}
	   
	   
	   
}
