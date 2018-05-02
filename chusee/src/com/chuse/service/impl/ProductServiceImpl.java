package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.ProductDao;
import com.chuse.entity.Product;
import com.chuse.service.ProductService;


@Transactional
@Service("productService")
public class ProductServiceImpl implements ProductService{
	
	@Resource
	private ProductDao productDao;


	public Product findByPid(Integer pid) {
		return productDao.findOne(pid);
	}


	public List<Product> findHot() {
		return productDao.findHot();
	}


}
