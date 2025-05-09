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

	public User findCenter(Integer uid){
		return this.centerDaoImpl.findById(uid);
	}	
	public User gaiUser(User user) {				
		return this.centerDaoImpl.updateUser(user);
		
	}
	

	public List<Topic> findTopicsByUid(Integer uid) {
	    return this.centerDaoImpl.findTopicsByUid(uid);
	}
	
	
	public List<Topic> findCommentedTopicsByUid(Integer uid) {
	  
	    List<Integer> tids = centerDaoImpl.findCommentedTidsByUid(uid);

	    return tids.isEmpty() ? 
	        Collections.emptyList() : 
	        centerDaoImpl.findTopicsByTids(tids);
	}





	
}
