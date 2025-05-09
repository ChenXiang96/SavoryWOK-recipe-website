package com.SavoryWok.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.SavoryWok.entity.Dish_Category;
import com.SavoryWok.entity.IngredientCategory;
import com.SavoryWok.entity.IngredientsDetail;

/**
 * 
 * @author xiang_chen
 *
 */

@Table(name="dishes")
@Entity
public class Dishes implements java.io.Serializable{
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
   private Integer id;
   private Integer is_hot;
   private String name;
   private String image;
   private String pdesc;
   private Date date;
   private String content;


	@JoinColumn(name="csid")
	@ManyToOne
	private IngredientCategory categorySecond;
	
	

	@OneToMany(mappedBy = "dishes", cascade = CascadeType.ALL)
	@OrderBy("step ASC")
  
	private Set<RecipeStep> steps = new HashSet<>();
	
	@OneToMany(mappedBy = "dish", cascade = CascadeType.ALL)

	private Set<IngredientsDetail> ingredients = new HashSet<>(); 
    
	@Transient 
    private Integer sid;
	


public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Integer getIs_hot() {
	return is_hot;
}
public void setIs_hot(Integer is_hot) {
	this.is_hot = is_hot;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
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
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public IngredientCategory getCategorySecond() {
	return categorySecond;
}
public void setCategorySecond(IngredientCategory categorySecond) {
	this.categorySecond = categorySecond;
}


public Set<RecipeStep> getSteps() {
    return steps;
}

public void setSteps(Set<RecipeStep> steps) {
    this.steps = steps;
}

public Set<IngredientsDetail> getIngredients() {
    return ingredients;
}
   
public void setIngredients(Set<IngredientsDetail> ingredients) {
    this.ingredients = ingredients;
}

public Integer getSid() {
    return sid;
}

public void setSid(Integer sid) {
    this.sid = sid;
}
   
}
