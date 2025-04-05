package com.SavoryWok.service.impl;

import java.util.List;
import java.util.Optional;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.impl.SpecialDaoImpl;
import com.SavoryWok.entity.Special;
import com.SavoryWok.service.SpecialService;



@Service("specialService")
@Transactional
public class SpecialServiceImpl{
	
	
	@Resource
	private SpecialDaoImpl specialdaoimpl;
	
	public List<Special> listSpecials(){
		
	
		return specialdaoimpl.findAll(1);
			
	}
	
	public Special findOne(Integer sid){
		return this.specialdaoimpl.findOne(sid);
	}
}
