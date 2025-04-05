package com.SavoryWok.service.impl;

import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.impl.CenterDaoImpl;
import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Topic;
import com.SavoryWok.entity.User;

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

	
	// CenterServiceImpl.java 新增方法
	public List<Topic> findTopicsByUid(Integer uid) {
	    return this.centerDaoImpl.findTopicsByUid(uid);
	}
	
	
	public List<Topic> findCommentedTopicsByUid(Integer uid) {
	    // 1. 获取用户评论过的所有唯一tid
	    List<Integer> tids = centerDaoImpl.findCommentedTidsByUid(uid);
	    
	    // 2. 根据tid列表查询动态
	    return tids.isEmpty() ? 
	        Collections.emptyList() : 
	        centerDaoImpl.findTopicsByTids(tids);
	}





	
}
