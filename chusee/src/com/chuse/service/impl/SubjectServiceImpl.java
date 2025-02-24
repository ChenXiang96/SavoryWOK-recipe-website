package com.chuse.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.DishesDao;
import com.chuse.dao.SubjectDao;
import com.chuse.entity.Dishes;
import com.chuse.entity.Subject;
import com.chuse.service.DishesService;
import com.chuse.service.SubjectService;

@Transactional
@Service("subjectService")
public class SubjectServiceImpl implements SubjectService {

	@Resource
	private SubjectDao subjectDao;
	
	public Subject findSubject(Integer pid){
		return this.subjectDao.findById(pid);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public Integer CountPageSubjectFromCategory2(Integer caid) {
		Integer count = subjectDao.CountPageSubjectFromCategory2(caid);
		return (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
	}
	
	public Integer CountPageSubjectFromCategorySecond2(Integer casid) {
		Integer count = subjectDao.CountPageSubjectFromCategorySecond2(casid);
		return (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
	}
	public List<Subject> findByCaid(Integer caid, Integer page) {
		return subjectDao.findByCategorySecondCategoryCid2(caid, page);
	}
	public List<Subject> findByCasid(Integer casid, Integer page) {
		return subjectDao.findByCategorySecondCsid2(casid, page);
	}
	public Subject findByPid2(Integer pid) {
		return subjectDao.findTwo(pid);
	}
	public List<Subject> findHHot() {
		return subjectDao.findHHot();
	}
	public List<Subject> findNew2() {
		return subjectDao.findNew2();
	}


	
	
	
	
}
