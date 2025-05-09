package com.SavoryWok.service;

import java.util.List;

import com.SavoryWok.entity.Subthemes;

public interface CategorySecond2Service {
	Subthemes getSubthemesById(Integer casid);
    List<Subthemes> findByCaid(Integer caid);
	
}