package com.chuse.dao;

import java.util.List;

import com.chuse.entity.Product;
import com.chuse.entity.Subject;



public interface ProductDao extends BaseDao<Product>{
	
	
	public List<Product> findHot();
	public List<Subject> findHHot();
	
	public List<Product> findNew();
	public List<Product> findByCategorySecondCsid(Integer csid,Integer page);
	
	public List<Subject> findByCategorySecondCsid2(Integer casid,Integer page);

	public List<Product> findByCategorySecondCategoryCid(Integer cid,Integer page);
	public List<Subject> findByCategorySecondCategoryCid2(Integer caid,Integer page);


	public Integer CountPageProductFromCategory(Integer cid);
	public Integer CountPageSubjectFromCategory2(Integer caid);
	
	public Integer CountPageProductFromCategorySecond(Integer csid);
	public Integer CountPageSubjectFromCategorySecond2(Integer casid);
	
	public Integer CountProduct();
	public Integer CountSubject();
	
	public Product findOne(Integer pid);
	public Subject findTwo(Integer pid);
	
	public List<Product> findAll(Integer page);
	public List<Subject> findAll2(Integer page);
}
