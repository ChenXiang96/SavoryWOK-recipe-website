package com.chuse.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

@Table(name = "category")
@Entity
public class Category implements Serializable {

    private static final long serialVersionUID = 1L;

    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    private Integer cid;

    private String cname;
    
    private String cimage;

    // 替换原有@ManyToMany注解
    @OneToMany(mappedBy = "category", fetch = FetchType.EAGER)
    private Set<CategorySecond> categorySeconds = new HashSet<CategorySecond>();

   

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCimage(String cname) {
        this.cname = cname;
    }
    
    public String getCimage() {
        return cimage;
    }

    public void setCname(String cimage) {
        this.cimage = cimage;
    }

    public Set<CategorySecond> getCategorySeconds() {
        return categorySeconds;
    }

    public void setCategorySeconds(Set<CategorySecond> categorySeconds) {
        this.categorySeconds = categorySeconds;
    }
}