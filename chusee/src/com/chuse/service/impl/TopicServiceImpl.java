package com.chuse.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.impl.TopicDaoImpl;
import com.chuse.entity.Food;
import com.chuse.entity.Topic;

@Transactional
@Service("topicService")
public class TopicServiceImpl {


	@Resource
	private TopicDaoImpl topicdaoimpl;
	
	
	//-------------------------------后
	//查
	public List<Topic> findByPage(int num, int i) {
		return topicdaoimpl.findByPage(num, i);
	}
	public int findByCount() {
		return topicdaoimpl.findCountByPage();
	}
	
	public Topic findTopic(Integer tid){
		return this.topicdaoimpl.findByIdBack(tid);
	}
	public void deleteTopic(Topic topic, Integer tid) {
		System.out.print("ser快删啊");
		this.topicdaoimpl.deleteByIdBack(topic,tid);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	public void addTopic(Topic t){
		System.out.println("service");
		topicdaoimpl.addtopic(t);
		
	}


	public List<Topic> listTopics(){
		
	
		return topicdaoimpl.findAll(1);
		
		
	}

}
