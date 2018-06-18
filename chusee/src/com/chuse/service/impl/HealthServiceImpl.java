package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.impl.HealthDaoImpl;
import com.chuse.entity.Product;

@Service
@Transactional(readOnly=true)
public class HealthServiceImpl {

	@Resource
	private HealthDaoImpl healthDaoImpl;
	
	//-----------------------------------------------------------------
	//查-前-商品列表
	public List<Product> listProducts(){
		return healthDaoImpl.findAll();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//------------------------------------------------------------

	//后-修改商品-先按id查出来
	public Product findProduct(Integer pid){
		return this.healthDaoImpl.findByIdBack(pid);
	}
	public Product updateProduct(Product product) {				
		return this.healthDaoImpl.updateBack(product);
		
	}
	//后台-删除商品
	public void deleteProduct(Product product, Integer pid) {
		System.out.print("ser快删啊");
		this.healthDaoImpl.deleteByIdBack(product,pid);
	}

	
	
	
	
	//后-添加商品
		
	public Product addProductBack(Product product){
		return this.healthDaoImpl.saveProduct(product);
				
	}
	
	
	
	
	
	//后-健康-分页查询数据
	public List<Product> findByPage(int num, int i) {
		return healthDaoImpl.findByPage(num, i);
	}
	public int findByCount() {
		return healthDaoImpl.findCountByPage();
	}
}
