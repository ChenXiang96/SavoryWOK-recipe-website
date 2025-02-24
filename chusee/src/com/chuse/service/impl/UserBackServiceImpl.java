package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.impl.UserBackDaoImpl;
import com.chuse.entity.Dishes;
import com.chuse.entity.User;

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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//后--先按id查出来
	public User findUser(Integer uid){
		return this.userBackDaoImpl.findByIdBack(uid);
	}
	//后台-删除用户
	public void deleteUser(User user, Integer uid) {
		System.out.print("ser快删啊");
		this.userBackDaoImpl.deleteByIdBack(user,uid);
	}
	
	
	//后台--------------------------------------
	//后--分页查询数据
	public List<User> findByPage(int num, int i) {
		return userBackDaoImpl.findByPage(num, i);
	}
	public int findByCount() {
		return userBackDaoImpl.findCountByPage();
	}
		
}
