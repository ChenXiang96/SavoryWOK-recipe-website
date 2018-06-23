package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.impl.ZhenXuanDaoImpl;
import com.chuse.entity.Zhenxuan;
@Service
@Transactional(readOnly=true)
public class ZhenXuanServiceImpl {

	@Resource
	private ZhenXuanDaoImpl zhenxuanDaoImpl;
	
	//-----------------------------------------------------------------
	public List<Zhenxuan> listZhenxuans(){
		return zhenxuanDaoImpl.findAll();
	}
	
	
}
