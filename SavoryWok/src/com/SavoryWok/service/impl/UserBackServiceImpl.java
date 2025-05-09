package com.SavoryWok.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.impl.UserBackDaoImpl;
import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.User;

@Service
@Transactional(readOnly=true)
public class UserBackServiceImpl {
	@Resource
	private UserBackDaoImpl userBackDaoImpl;
	
	public User login(String username, String password){
		
		User user=this.userBackDaoImpl.findByName(username);
		if(user!=null){
			if(user.getPassword().equals(password)){
				return user;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
	
	
	

	public User findUser(Integer uid){
		return this.userBackDaoImpl.findByIdBack(uid);
	}

	public void deleteUser(User user, Integer uid) {
		
		this.userBackDaoImpl.deleteByIdBack(user,uid);
	}
	

	public List<User> findByPage(int num, int i) {
		return userBackDaoImpl.findByPage(num, i);
	}
	public int findByCount() {
		return userBackDaoImpl.findCountByPage();
	}
		
}
