package com.chuse.service;

import com.chuse.entity.User;

public interface UserService {

	
	public User active(String code);
	
	public User findUserByUsernameAndPassword(User user);
	
	public User existUser(String userName);
	
	public void register(User user);
	
	public void update(User user);

}