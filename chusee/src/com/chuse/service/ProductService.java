package com.chuse.service;

import java.util.List;

import com.chuse.entity.Product;
import com.chuse.entity.Subject;



public interface ProductService {

       
	//根据菜品的pid查询菜品
	public Product findByPid(Integer pid);
	
	public Subject findByPid2(Integer pid);
	public Subject findBySid(Integer pid);
	//根据一级分类查询菜品
	public List<Product> findByCid(Integer cid,Integer page);
	//根据专题一级分类查询菜品
    public List<Subject> findByCaid(Integer caid,Integer page);
    
   
	//根据二级分类查询商品
    public List<Product> findByCsid(Integer csid, Integer page);
    //根据专题二级分类查询商品
    public List<Subject> findByCasid(Integer casid, Integer page);
	//返回一级有多少页的数据
	public Integer CountPageProductFromCategory(Integer cid);
	 public Integer CountPageSubjectFromCategory2(Integer caid);
	
	//查找最热的商品6条
	public List<Product> findHot();
	public List<Subject> findHHot();
	public Integer CountPageProductFromCategorySecond(Integer csid);
	public Integer CountPageSubjectFromCategorySecond2(Integer casid);

	
	//查找最新的商品10条
	public List<Product> findNew();
	//查找最新的商品10条
	public List<Subject> findNew2();


}
