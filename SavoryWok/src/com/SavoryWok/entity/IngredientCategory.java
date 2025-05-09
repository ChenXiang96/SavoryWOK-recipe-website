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

@Table(name = "ingredient_category")
@Entity
public class IngredientCategory implements Serializable {

    private static final long serialVersionUID = 1L;

    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    private Integer csid;

    private String csname;


    @OneToMany(fetch = FetchType.LAZY, mappedBy = "categorySecond")
    private Set<Dishes> products = new HashSet<Dishes>();
    
    
    
    @JoinColumn(name = "cid") 
    @ManyToOne
    private Dish_Category category;
    

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



    public Set<Dishes> getProducts() {
        return products;
    }

    public void setProducts(Set<Dishes> products) {
        this.products = products;
    }
    
    public Dish_Category getCategory() { 
    	return category; 
    }
    public void setCategory(Dish_Category category) { 
    	this.category = category; 
    }
}