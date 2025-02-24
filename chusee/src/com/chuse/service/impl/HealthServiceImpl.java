package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.impl.HealthDaoImpl;
import com.chuse.entity.Howdo;
import com.chuse.entity.Material;
import com.chuse.entity.Dishes;
import com.chuse.entity.Topic;
import com.chuse.entity.User;

@Service
@Transactional(readOnly=true)
public class HealthServiceImpl {

	@Resource
	private HealthDaoImpl healthDaoImpl;
	
	//-----------------------------------------------------------------
	//前台跳转到菜的做法页面-把菜名和菜的图片列出来
	public Dishes findHowdoP(Integer pid){
		System.out.print("aaachulaichulaiser");
		return this.healthDaoImpl.findByIdP(pid);
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
	
	
	
	
	
	
	
	//查-前-商品列表
	public List<Dishes> listDishes(){
		return healthDaoImpl.findAll();
	}

	
	//------------------------------------------------------------

	//后-修改商品-先按id查出来
	public Dishes findDishes(Integer pid){
		return this.healthDaoImpl.findByIdBack(pid);
	}
	public Dishes updateDishes(Dishes Dishes) {				
		return this.healthDaoImpl.updateBack(Dishes);
		
	}
	//后台-删除商品
	public void deleteDishes(Dishes Dishes, Integer pid) {
		System.out.print("ser快删啊");
		this.healthDaoImpl.deleteByIdBack(Dishes,pid);
	}

	
	
	
	
	//后-添加商品
		
	public Dishes addDishesBack(Dishes Dishes){
		return this.healthDaoImpl.saveDishes(Dishes);
				
	}
	
	
	
	
	
	//后-健康-分页查询数据
	public List<Dishes> findByPage(int num, int i) {
		return healthDaoImpl.findByPage(num, i);
	}
	public int findByCount() {
		return healthDaoImpl.findCountByPage();
	}
}
