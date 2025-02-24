package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.impl.SubjectBackDaoImpl;
import com.chuse.entity.Dishes;
import com.chuse.entity.Subject;

@Service
@Transactional(readOnly=true)
public class SubjectBackServiceImpl {

	@Resource
	private SubjectBackDaoImpl subjectBackDaoImpl;
	

	
	
	
	
	
	
	

	
	//------------------------------------------------------------

	//后-修改商品-先按id查出来
	public Subject findSubject(Integer pid){
		return this.subjectBackDaoImpl.findByIdBack(pid);
	}
	public Subject updatesubject(Subject subject) {				
		return this.subjectBackDaoImpl.updateBack(subject);
		
	}
	//后台-删除商品
	public void deletesubject(Subject subject, Integer pid) {
		System.out.print("ser快删啊");
		this.subjectBackDaoImpl.deleteByIdBack(subject,pid);
	}

	
	
	
	
	//后-添加商品
		
	public Subject addsubjectBack(Subject subject){
		return this.subjectBackDaoImpl.savesubject(subject);
				
	}
	
	
	
	
	
	//后-健康-分页查询数据
	public List<Subject> findByPage(int num, int i) {
		return subjectBackDaoImpl.findByPage(num, i);
	}
	public int findByCount() {
		return subjectBackDaoImpl.findCountByPage();
	}
}
