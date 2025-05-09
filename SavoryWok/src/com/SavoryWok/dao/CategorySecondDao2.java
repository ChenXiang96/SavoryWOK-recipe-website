package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.Subthemes;

public interface CategorySecondDao2 extends BaseDao<Subthemes>{

	
	public Integer countCategorySecond2();

	public List<Subthemes> findAll2(Integer page);
	
	public List<Subthemes> findAll2();
	
	public Subthemes findTwo(Integer caid);
}
