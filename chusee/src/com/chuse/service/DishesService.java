package com.chuse.service;

import java.util.List;

import com.chuse.entity.Dishes;
import com.chuse.entity.Subject;



public interface DishesService {

       
	//根据菜品的pid查询菜品
	public Dishes findByPid(Integer pid);
	
	
	
	//根据一级分类查询菜品
	public List<Dishes> findByCid(Integer cid,Integer page);
	
    
   
	//根据二级分类查询商品
    public List<Dishes> findByCsid(Integer csid, Integer page);
   
	//返回一级有多少页的数据
	public Integer CountPageDishesFromCategory(Integer cid);

	
	//查找最热的商品6条
	public List<Dishes> findHot();

	public Integer CountPageDishesFromCategorySecond(Integer csid);


	
	//查找最新的商品10条
	public List<Dishes> findNew();

}
