package com.chuse.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.ProductDao;
import com.chuse.dao.impl.TopicDaoImpl;
import com.chuse.entity.Food;
import com.chuse.entity.Product;
import com.chuse.entity.Topic;

@Transactional
@Service("topicService")
public class TopicServiceImpl {


	@Resource
	private TopicDaoImpl topicdaoimpl;



	public List<Topic> listTopics(){
		
	
		return topicdaoimpl.findAll(1);
		
		
	}

}
