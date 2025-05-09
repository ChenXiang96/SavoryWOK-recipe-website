package com.SavoryWok.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ingredients_details")
public class IngredientsDetail{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    private String item;
    private String qty;

    
    @ManyToOne
    @JoinColumn(name = "dish_id")
    private Dishes dish; 
    

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getQty() {
        return qty;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }

   
    public Dishes getDish() { 
    	return dish; 
    	}
    public void setDish(Dishes dish) { 
    	this.dish = dish; 
    	}
}
