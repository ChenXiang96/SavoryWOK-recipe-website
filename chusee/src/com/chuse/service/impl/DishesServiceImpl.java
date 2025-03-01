package com.chuse.service.impl;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chuse.dao.CategorySecondGroupDao;
import com.chuse.dao.DishesDao;
import com.chuse.entity.CategorySecondGroup;
import com.chuse.entity.Dishes;
import com.chuse.entity.IngredientsDetail;
import com.chuse.service.DishesService;

@Transactional
@Service("DishesService")
public class DishesServiceImpl implements DishesService {

    @Resource
    private DishesDao DishesDao;

    @Override
    public Integer CountPageDishesFromCategory(Integer cid) {
        Integer count = DishesDao.countByCategorySecondCategoryCid(cid);
        return (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
    }

    @Override
    public Integer CountPageDishesFromCategorySecond(Integer csid) {
        Integer count = DishesDao.countByCategorySecondCsid(csid);
        return (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
    }

    @Override
    public List<Dishes> findByCid(Integer cid, Integer page) {
        return DishesDao.findByCategorySecondCategoryCid(cid, page);
        
    }

    @Override
    public List<Dishes> findByCsid(Integer csid, Integer page) {
        return DishesDao.findByCategorySecondCsid(csid, page);
    }

    @Override
    public Dishes findByPid(Integer pid) {
        return DishesDao.findWithStepsAndIngredients(pid);
    }
    
    
    @Autowired
    private CategorySecondGroupDao categorySecondGroupDao; // 需要新建该DAO

    @Override
    public List<Dishes> findByCsname(String csname, Integer page) {
        System.out.println("===== 开始查询分类：" + csname + " =====");
        CategorySecondGroup group = categorySecondGroupDao.findByCsname(csname);
        System.out.println("查询到的group数据：" + (group != null ? group.getCsids() : "null"));
        
        // 增加csids空值校验
        if(group == null || group.getCsids() == null) {
            return Collections.emptyList();
        }
        
        List<Integer> csids = Arrays.stream(group.getCsids().split(","))
                                  .map(String::trim) // 处理可能的空格
                                  .map(Integer::parseInt)
                                  .collect(Collectors.toList());
        System.out.println("转换后的csids列表：" + csids);
        
        return DishesDao.findByCsids(csids, page);
    }


    @Override
    public Integer countPageByCsname(String csname) {
        CategorySecondGroup group = categorySecondGroupDao.findByCsname(csname);
        List<Integer> csids = Arrays.stream(group.getCsids().split(","))
                                  .map(Integer::parseInt)
                                  .collect(Collectors.toList());
        
        int count = DishesDao.countByCsids(csids);
        return (count % 12 == 0) ? (count / 12) : (count / 12 + 1);
    }

    
    @Override
    public List<Dishes> findHot() {
        return DishesDao.findHot();
    }

    @Override
    public List<Dishes> findNew() {
        return DishesDao.findNew();
    }

}