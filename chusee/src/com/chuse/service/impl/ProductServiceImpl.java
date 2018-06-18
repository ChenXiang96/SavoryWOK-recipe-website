package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.ProductDao;
import com.chuse.entity.Product;
import com.chuse.entity.Subject;
import com.chuse.service.ProductService;


@Transactional
@Service("productService")
public class ProductServiceImpl implements ProductService{
	
	@Resource
	private ProductDao productDao;

	public Integer CountPageProductFromCategory(Integer cid) {
		Integer count = productDao.CountPageProductFromCategory(cid);
		return (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
	}
	
	public Integer CountPageSubjectFromCategory2(Integer caid) {
		Integer count = productDao.CountPageSubjectFromCategory2(caid);
		return (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
	}

	public Integer CountPageProductFromCategorySecond(Integer csid) {
		Integer count = productDao.CountPageProductFromCategorySecond(csid);
		return (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
	}
	
	public Integer CountPageSubjectFromCategorySecond2(Integer casid) {
		Integer count = productDao.CountPageSubjectFromCategorySecond2(casid);
		return (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
	}

	public List<Product> findByCid(Integer cid, Integer page) {
		return productDao.findByCategorySecondCategoryCid(cid, page);
	}
	public List<Subject> findByCaid(Integer caid, Integer page) {
		return productDao.findByCategorySecondCategoryCid2(caid, page);
	}
	public List<Product> findByCsid(Integer csid, Integer page) {
		return productDao.findByCategorySecondCsid(csid, page);
	}
	public List<Subject> findByCasid(Integer casid, Integer page) {
		return productDao.findByCategorySecondCsid2(casid, page);
	}
	
	
	public Product findByPid(Integer pid) {
		return productDao.findOne(pid);
	}
	public Subject findByPid2(Integer pid) {
		return productDao.findTwo(pid);
	}
	public Subject findBySid(Integer pid) {
		return productDao.findTwo(pid);
	}
	


	public List<Product> findHot() {
		return productDao.findHot();
	}
    
	public List<Subject> findHHot() {
		return productDao.findHHot();
	}
	

	public List<Product> findNew() {
		return productDao.findNew();
	}
	public List<Subject> findNew2() {
		return productDao.findNew2();
	}
}
