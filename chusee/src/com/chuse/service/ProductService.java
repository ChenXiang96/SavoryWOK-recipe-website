package com.chuse.service;

import java.util.List;

import com.chuse.entity.Product;



public interface ProductService {


	//根据菜品的pid查询菜品
	public Product findByPid(Integer pid);
	//查找最热的商品10条
	public List<Product> findHot();

}
