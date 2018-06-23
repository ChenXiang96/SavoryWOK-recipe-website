package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.chuse.dao.impl.ZhenXuanDaoImpl;
import com.chuse.entity.zhenxuan;

public class ZhenXuanServiceImpl {

	@Resource
	private ZhenXuanDaoImpl zhenxuanDaoImpl;
	
	//-----------------------------------------------------------------
	//查-前-商品列表
	public List<zhenxuan> listProducts(){
		return zhenxuanDaoImpl.findAll();
	}
	
	
}
