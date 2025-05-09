package com.SavoryWok.service;

import java.util.List;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Subject;



public interface DishesService {

       
	public Dishes getDishById(Integer id);
	

	public List<Dishes> findByCid(Integer cid,Integer page);
	
 
    public List<Dishes> findByCsid(Integer csid, Integer page);
   
    public List<Dishes> findDishesByCasid(Integer casid);

	public Integer CountPageDishesFromCategory(Integer cid);

	
	public List<Dishes> findByCsname(String csname, Integer page);
	public Integer countPageByCsname(String csname);


	public List<Dishes> findHot();
	public Integer CountPageDishesFromCategorySecond(Integer csid);

	public List<Dishes> findNew();
	



}
