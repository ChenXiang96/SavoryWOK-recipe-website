package com.SavoryWok.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.FoodDaoImpl;
import com.SavoryWok.entity.Food;

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
