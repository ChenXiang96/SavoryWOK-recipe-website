package com.chuse.service;
import java.util.List;

import com.chuse.entity.Product;
import com.chuse.entity.Subject;


public interface SubjectService {
	
	//根据专题的pid查询菜品
	public Subject findByPid2(Integer pid);
	

	//根据专题一级分类查询菜品
    public List<Subject> findByCaid(Integer caid,Integer page);
    //根据专题二级分类查询商品
    public List<Subject> findByCasid(Integer casid, Integer page);
	//返回一级有多少页的数据
	public Integer CountPageSubjectFromCategory2(Integer caid);
	//查找最热的专题6条
	public List<Subject> findHHot();
	
	public Integer CountPageSubjectFromCategorySecond2(Integer casid);
		
	//查找最新的专题10条
	public List<Subject> findNew2();
}
