package com.chuse.service;

import com.chuse.entity.User;

public interface UserService {

	public User existUser(String userName);
	public void register(User user);
	

}