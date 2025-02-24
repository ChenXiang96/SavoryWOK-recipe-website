package com.chuse.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.impl.CenterDaoImpl;
import com.chuse.entity.Dishes;
import com.chuse.entity.User;

@Service
@Transactional(readOnly=true)
public class CenterServiceImpl {
	@Resource
	private CenterDaoImpl centerDaoImpl;
	//往center页面跳转
	public User findCenter(Integer uid){
		return this.centerDaoImpl.findById(uid);
	}	
	public User gaiUser(User user) {				
		return this.centerDaoImpl.updateUser(user);
		
	}
	
//	//修改密码
//	public User xiugaiPassword(Integer uid,String newpass, String ensurepass){
//		User user=this.centerDaoImpl.findByIdPass(uid,ensurepass,newpass);
//		if(newpass==ensurepass){			
//			return this.centerDaoImpl.findByIdPass(uid, ensurepass, newpass);
//		}else{
//			return null;
//		}
//				
//	}

	
}
