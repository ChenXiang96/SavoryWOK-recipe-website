package com.chuse.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.UserDao;
import com.chuse.entity.User;
import com.chuse.service.UserService;


@Transactional
@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Resource
	private UserDao userDao;
	
	public User active(String code) {
		return userDao.findByCode(code);
	}
	

	public User existUser(String userName) {
		return userDao.findByUsername(userName);
	}



	public void update(User user) {
		userDao.update(user);
		
	}


	@Override
	public void register(User user) {
		// TODO Auto-generated method stub
		
	}
	
}
