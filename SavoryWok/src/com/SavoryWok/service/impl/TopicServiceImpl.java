package com.SavoryWok.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.impl.TopicDaoImpl;
import com.SavoryWok.dao.impl.UserDaoImpl;
import com.SavoryWok.entity.Food;
import com.SavoryWok.entity.Topic;
import com.SavoryWok.entity.User;

@Transactional
@Service("topicService")
public class TopicServiceImpl {


	@Resource
	private TopicDaoImpl topicdaoimpl;
	
	@Resource
	private UserDaoImpl userdaoimpl;
	
	//-------------------------------后
	//查
	public List<Topic> findByPage(int num, int i) {
		return topicdaoimpl.findByPage(num, i);
	}
	public int findByCount() {
		return topicdaoimpl.findCountByPage();
	}
	


	public User addTopic(Topic t){
		System.out.println("service");

		User u = userdaoimpl.findById(t.getUid());
		t.setUimg(u.getUimage());
		t.setUname(u.getUsername());
		topicdaoimpl.addtopic(t);
	
		return userdaoimpl.findById(t.getUid());
	}


	public List<Topic> listTopics(){
		
	
		return topicdaoimpl.findAll(1);
		
		
	}

}
