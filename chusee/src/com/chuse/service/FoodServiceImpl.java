package com.chuse.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.entity.Food;
import com.chuse.dao.FoodDaoImpl;

@Service
@Transactional(readOnly=true)
public class FoodServiceImpl {
	
	@Resource
	private FoodDaoImpl foodDaoImpl;
	
	public Food findById(Integer id){
		return this.foodDaoImpl.findById(id);
	}
	
	public List<Food> listFoods(){
		return foodDaoImpl.findAll();
	}
	

}
