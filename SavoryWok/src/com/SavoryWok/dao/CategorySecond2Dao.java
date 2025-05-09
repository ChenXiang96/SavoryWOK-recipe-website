package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.Subthemes;

public interface CategorySecond2Dao {
	Subthemes getSubthemesById(Integer casid);
    
    
    List<Subthemes> findByCaid(Integer caid);
    
    
    
}