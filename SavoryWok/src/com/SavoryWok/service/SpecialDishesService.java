package com.SavoryWok.service;

import java.util.List;

import com.SavoryWok.entity.Dishes;

public interface SpecialDishesService {
    List<Dishes> getDishesBySpecialId(Integer sid);
}