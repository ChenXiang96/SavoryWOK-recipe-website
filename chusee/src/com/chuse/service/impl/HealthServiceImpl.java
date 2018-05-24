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
	
	//后-商品删除
	//修改商品
	public Product findProduct(Integer pid){
		return this.healthDaoImpl.findByIdBack(pid);
	}	

	
	
	
	
	
	
	//后-健康-分页查询数据
	public List<Product> findByPage(int num, int i) {
		return healthDaoImpl.findByPage(num, i);
	}
	public int findByCount() {
		return healthDaoImpl.findCountByPage();
	}
}
