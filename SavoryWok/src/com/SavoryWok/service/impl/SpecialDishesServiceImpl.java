package com.SavoryWok.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SavoryWok.dao.SpecialDishesDao;
import com.SavoryWok.entity.Dishes;
import com.SavoryWok.service.SpecialDishesService;

@Service
public class SpecialDishesServiceImpl implements SpecialDishesService {
    @Autowired
    private SpecialDishesDao specialDishesDao;

    @Override
    public List<Dishes> getDishesBySpecialId(Integer sid) {
        return specialDishesDao.findDishesBySpecialId(sid);
    }
}