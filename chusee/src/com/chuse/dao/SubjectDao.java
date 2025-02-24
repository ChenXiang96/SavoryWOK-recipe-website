package com.chuse.dao;

import java.util.List;

import com.chuse.entity.Dishes;
import com.chuse.entity.Subject;

public interface SubjectDao extends BaseDao<Subject>{

	public List<Subject> findHHot();
	public List<Subject> findNew2();
	public List<Subject> findByCategorySecondCsid2(Integer casid,Integer page);
	public List<Subject> findByCategorySecondCategoryCid2(Integer caid,Integer page);
	public Integer CountPageSubjectFromCategory2(Integer caid);
	public Integer CountPageSubjectFromCategorySecond2(Integer casid);
	public Integer CountSubject();
	public Subject findTwo(Integer pid);
	public List<Subject> findAll2(Integer page);
	public Subject findById(Integer pid);
}
