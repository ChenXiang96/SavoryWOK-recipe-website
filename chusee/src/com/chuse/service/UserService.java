package com.chuse.service;

import java.util.List;

import com.chuse.entity.User;

public interface UserService {

	
	public User active(String code);
	
	public User findUserByUsernameAndPassword(User user);
	
	public User existUser(String userName);
	
	public void register(User user);
	
	public void update(User user);
	
	public List<User> findByPage(int num, int i);
	
	public int findByCount();
	
	public User findUser(Integer uid);

}