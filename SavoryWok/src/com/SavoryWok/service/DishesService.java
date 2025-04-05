package com.SavoryWok.service;

import java.util.List;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Subject;



public interface DishesService {

       
	//根据菜品的pid查询菜品
	public Dishes findByPid(Integer pid);
	
	
	
	//根据一级分类查询菜品
	public List<Dishes> findByCid(Integer cid,Integer page);
	
    
   
	//根据二级分类查询商品
    public List<Dishes> findByCsid(Integer csid, Integer page);
   
    public List<Dishes> findDishesByCasid(Integer casid);
    
	//返回一级有多少页的数据
	public Integer CountPageDishesFromCategory(Integer cid);

	
	public List<Dishes> findByCsname(String csname, Integer page);
	public Integer countPageByCsname(String csname);


	public List<Dishes> findHot();
	public Integer CountPageDishesFromCategorySecond(Integer csid);

	//查找最新的商品10条
	public List<Dishes> findNew();
	



}
