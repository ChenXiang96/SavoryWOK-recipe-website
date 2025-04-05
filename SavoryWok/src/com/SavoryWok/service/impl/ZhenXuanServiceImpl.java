package com.SavoryWok.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.impl.ZhenXuanDaoImpl;
import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Zhenxuan;
@Service
@Transactional(readOnly=true)
public class ZhenXuanServiceImpl {

	@Resource
	private ZhenXuanDaoImpl zhenxuanDaoImpl;
	
	//-----------------------------------------------------------------
	public List<Zhenxuan> listZhenxuans(){
		return zhenxuanDaoImpl.findAll();
	}
	
	public Zhenxuan findZhenxuan(Integer zid){
		return this.zhenxuanDaoImpl.findById(zid);
	}
	
	
}
