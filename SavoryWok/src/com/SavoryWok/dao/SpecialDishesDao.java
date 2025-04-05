package com.SavoryWok.dao;

import java.util.List;

import com.SavoryWok.entity.Dishes;

public interface SpecialDishesDao {
  
	public List<Dishes> findDishesBySpecialId(Integer sid);
}