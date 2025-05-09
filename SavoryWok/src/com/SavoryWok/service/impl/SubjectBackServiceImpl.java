package com.SavoryWok.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.impl.SubjectBackDaoImpl;
import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Subject;

@Service
@Transactional(readOnly=true)
public class SubjectBackServiceImpl {

	@Resource
	private SubjectBackDaoImpl subjectBackDaoImpl;
	


	public Subject findSubject(Integer pid){
		return this.subjectBackDaoImpl.findByIdBack(pid);
	}
	public Subject updatesubject(Subject subject) {				
		return this.subjectBackDaoImpl.updateBack(subject);
		
	}

	public void deletesubject(Subject subject, Integer pid) {
		
		this.subjectBackDaoImpl.deleteByIdBack(subject,pid);
	}


		
	public Subject addsubjectBack(Subject subject){
		return this.subjectBackDaoImpl.savesubject(subject);
				
	}

	public List<Subject> findByPage(int num, int i) {
		return subjectBackDaoImpl.findByPage(num, i);
	}
	public int findByCount() {
		return subjectBackDaoImpl.findCountByPage();
	}
}
