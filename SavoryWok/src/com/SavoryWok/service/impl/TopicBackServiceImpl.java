package com.SavoryWok.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.impl.TopicBackDaoImpl;
import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Topic;

@Service
@Transactional(readOnly=true)
public class TopicBackServiceImpl {
	@Resource
	private TopicBackDaoImpl topicBackDaoImpl;
	
	public List<Topic> findByPage(int num, int i) {
		return topicBackDaoImpl.findByPage(num, i);
	}
	public int findByCount() {
		return topicBackDaoImpl.findCountByPage();
	}
	
	
	//后-
	public Topic findTopic(Integer tid){
		return this.topicBackDaoImpl.findByIdBack(tid);
	}
	public void deleteTopic(Topic topic, Integer tid) {
		System.out.print("ser快删啊");
		this.topicBackDaoImpl.deleteByIdBack(topic,tid);
	}
}
