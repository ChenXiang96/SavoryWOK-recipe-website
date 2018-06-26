package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.impl.SpecialDaoImpl;
import com.chuse.entity.Special;



@Transactional
@Service("specialService")
public class SepcialServiceImpl {
	
	
	@Resource
	private SpecialDaoImpl specialdaoimpl;
	
	public List<Special> listSpecials(){
		
	
		return specialdaoimpl.findAll(1);
			
	}
	
	public Special findOne(Integer sid){
		return this.specialdaoimpl.findOne(sid);
	}
}
