package com.SavoryWok.service;
import java.util.List;

import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.Subject;


public interface SubjectService {
	

	public Subject findByPid2(Integer pid);
	

    public List<Subject> findByCaid(Integer caid,Integer page);
  
    public List<Subject> findByCasid(Integer casid, Integer page);
	
	public Integer CountPageSubjectFromCategory2(Integer caid);
	
	public List<Subject> findHHot();
	
	public Integer CountPageSubjectFromCategorySecond2(Integer casid);
		
	
	public List<Subject> findNew2();
	
	public Subject findSubject(Integer pid);
}
