package com.SavoryWok.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.impl.HealthDaoImpl;
import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Howdo;
import com.SavoryWok.entity.Material;
import com.SavoryWok.entity.Topic;
import com.SavoryWok.entity.User;

@Service
@Transactional(readOnly=true)
public class HealthServiceImpl {

	@Resource
	private HealthDaoImpl healthDaoImpl;

	public Dishes findHowdoP(Integer id){
		System.out.print("aaachulaichulaiser");
		return this.healthDaoImpl.findByIdP(id);
	}
	public User findHowdoU(Integer uid){
		System.out.print("aaachulaichulaiser");
		return this.healthDaoImpl.findByIdU(uid);
	}
	public Material findHowdoM(Integer mid){
		System.out.print("aaachulaichulaiser");
		return this.healthDaoImpl.findByIdM(mid);
	}
	public Howdo findHowdoH(Integer hid){
		System.out.print("aaachulaichulaiser");
		return this.healthDaoImpl.findByIdH(hid);
	}
	
	
	public List<Dishes> listDishesByPage(Integer page, Integer pageSize) {
	    int offset = (page - 1) * pageSize;  
	    return healthDaoImpl.findByPage(offset, pageSize);
	}

	public Integer countAllDishes() {
	    return healthDaoImpl.findCountByPage(); 
	}

	public List<Dishes> listDishes(){
		return healthDaoImpl.findAll();
	}

	

	public Dishes findDishes(Integer id){
		return this.healthDaoImpl.findByIdBack(id);
	}
	public Dishes updateDishes(Dishes Dishes) {				
		return this.healthDaoImpl.updateBack(Dishes);
		
	}
	
	public void deleteDishes(Dishes Dishes, Integer id) {
		
		this.healthDaoImpl.deleteByIdBack(Dishes,id);
	}

	

		
	public Dishes addDishesBack(Dishes Dishes){
		return this.healthDaoImpl.saveDishes(Dishes);
				
	}
	

	public List<Dishes> findByPage(int num, int i) {
		return healthDaoImpl.findByPage(num, i);
	}
	public int findByCount() {
		return healthDaoImpl.findCountByPage();
	}
}
