package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.impl.UserBackDaoImpl;
import com.chuse.entity.User;

@Service
@Transactional(readOnly=true)
public class UserBackServiceImpl {
	@Resource
	private UserBackDaoImpl userBackDaoImpl;
	
	//后台--------------------------------------
	//后--分页查询数据
	public List<User> findByPage(int num, int i) {
		return userBackDaoImpl.findByPage(num, i);
	}
	public int findByCount() {
		return userBackDaoImpl.findCountByPage();
	}
		
}
