package com.chuse.service;

import java.util.List;

import com.chuse.entity.Product;



public interface ProductService {

       
	//根据菜品的pid查询菜品
	public Product findByPid(Integer pid);
	//根据一级分类查询菜品
	public List<Product> findByCid(Integer cid,Integer page);

	//返回一级有多少页的数据
	public Integer CountPageProductFromCategory(Integer cid);
	//查找最热的商品6条
	public List<Product> findHot();

}
