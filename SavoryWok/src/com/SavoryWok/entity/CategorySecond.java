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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Table(name = "categorysecond")
@Entity
public class CategorySecond implements Serializable {

    private static final long serialVersionUID = 1L;

    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    private Integer csid;

    private String csname;

    // 使用 @ManyToMany 注解，表示多对多关系
    @ManyToMany(mappedBy = "categorySeconds", fetch = FetchType.LAZY)
    private Set<Category> categories = new HashSet<Category>();

    // 配置商品集合
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "categorySecond")
    private Set<Dishes> products = new HashSet<Dishes>();
    
    
    
    @JoinColumn(name = "cid")  // 对应新增的数据库字段
    @ManyToOne
    private Category category;
    

    public Integer getCsid() {
        return csid;
    }

    public void setCsid(Integer csid) {
        this.csid = csid;
    }

    public String getCsname() {
        return csname;
    }

    public void setCsname(String csname) {
        this.csname = csname;
    }

    public Set<Category> getCategories() {
        return categories;
    }

    public void setCategories(Set<Category> categories) {
        this.categories = categories;
    }

    public Set<Dishes> getProducts() {
        return products;
    }

    public void setProducts(Set<Dishes> products) {
        this.products = products;
    }
    
    public Category getCategory() { 
    	return category; 
    }
    public void setCategory(Category category) { 
    	this.category = category; 
    }
}