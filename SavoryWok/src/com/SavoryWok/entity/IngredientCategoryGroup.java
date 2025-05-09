package com.SavoryWok.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Immutable;

@Immutable
@Table(name = "v_ingredient_category_group")
@Entity
public class IngredientCategoryGroup implements Serializable {
    @Id
    private String csname;
    
    @Column(name = "csids")
    private String csids;

   
    public String getCsname() { return csname; }
    public void setCsname(String csname) { this.csname = csname; }
    public String getCsids() { return csids; }
    public void setCsids(String csids) { this.csids = csids; }
}
