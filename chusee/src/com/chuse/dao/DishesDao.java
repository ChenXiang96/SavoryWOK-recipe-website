package com.chuse.dao;

import java.util.List;

import com.chuse.entity.Dishes;
import com.chuse.entity.Subject;



public interface DishesDao extends BaseDao<Dishes>{
	
	
	public List<Dishes> findHot();

	
	public List<Dishes> findNew();
	
	
	public List<Dishes> findByCategorySecondCsid(Integer csid,Integer page);
	
	

	public List<Dishes> findByCategorySecondCategoryCid(Integer cid,Integer page);

    
	public Integer countByCategorySecondCategoryCid(Integer cid);
	
	public Integer countByCategorySecondCsid(Integer csid);

	public Integer CountPageDishesFromCategory(Integer cid);
	
	
	public Integer CountPageDishesFromCategorySecond(Integer csid);
		
	public Integer CountDishes();

	
	public Dishes findOne(Integer pid);
	
	public Dishes findWithSteps(Integer pid);
	
	public List<Dishes> findAll(Integer page);

}
