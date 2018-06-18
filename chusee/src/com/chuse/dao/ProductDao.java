package com.chuse.dao;

import java.util.List;

import com.chuse.entity.Product;
import com.chuse.entity.Subject;



public interface ProductDao extends BaseDao<Product>{
	
	
	public List<Product> findHot();

	
	public List<Product> findNew();
	
	
	public List<Product> findByCategorySecondCsid(Integer csid,Integer page);
	
	

	public List<Product> findByCategorySecondCategoryCid(Integer cid,Integer page);



	public Integer CountPageProductFromCategory(Integer cid);
	
	
	public Integer CountPageProductFromCategorySecond(Integer csid);
		
	public Integer CountProduct();

	
	public Product findOne(Integer pid);
	
	
	public List<Product> findAll(Integer page);

}
