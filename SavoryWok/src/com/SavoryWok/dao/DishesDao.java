package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Subject;



public interface DishesDao extends BaseDao<Dishes>{
	
	
	public List<Dishes> findHot();

	
	public List<Dishes> findNew();
	
	
	public List<Dishes> findByCategorySecondCsid(Integer csid,Integer page);
	
	

	public List<Dishes> findByCategorySecondCategoryCid(Integer cid,Integer page);

    
	public Integer countByCategorySecondCategoryCid(Integer cid);
	
	public Integer countByCategorySecondCsid(Integer csid);

	public Integer CountPageDishesFromCategory(Integer cid);
	
	
	public Integer CountPageDishesFromCategorySecond(Integer csid);
	
	
	
	public List<Dishes> findByCsids(List<Integer> csids, Integer page);
	
	public List<Dishes> findDishesByCasid(Integer casid);
	 
	public Integer countByCsids(List<Integer> csids);
    
		
	public Integer CountDishes();

	
	public Dishes findOne(Integer id);
	

	public Dishes findWithStepsAndIngredients(Integer id);
	
	public List<Dishes> findAll(Integer page);
	

	
       
	

}
