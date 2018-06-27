package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.UserDao;
import com.chuse.dao.impl.UserDaoImpl;
import com.chuse.entity.Product;
import com.chuse.entity.User;
import com.chuse.service.UserService;

import com.chuse.utils.UUIDUtils;
import com.chuse.utils.MailUitls;



@Transactional
@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Resource
	private UserDao userDao;
	//前台，往用户中心跳转--------------------------------------------
	//顺便获取用户信息
	public User findUser(Integer uid){
		return this.userDao.findById(uid);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//后台--------------------------------------
	//后--分页查询数据
	public List<User> findByPage(int num, int i) {
		return userDao.findByPage(num, i);
	}
	public int findByCount() {
		return userDao.findCountByPage();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public User active(String code) {
		return userDao.findByCode(code);
	}
	
	public User findUserByUsernameAndPassword(User user) {
		return userDao.findByUsernameAndPassword(user.getUsername(), user.getPassword());
	}
	
	public User existUser(String userName) {
		return userDao.findByUsername(userName);
	}

	public void register(User user) {
		user.setState(1);
		String code = UUIDUtils.getUUID()+UUIDUtils.getUUID();
		user.setCode(code);
		user.setUimage("head.jpg");
		userDao.save(user);
		//发送激活邮件
		MailUitls.sendMail(user.getEmail(), code);
	}

	public void update(User user) {
		userDao.update(user);
		
	}
	
}
