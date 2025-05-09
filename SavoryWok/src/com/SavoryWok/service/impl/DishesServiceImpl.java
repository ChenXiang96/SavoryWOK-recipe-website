package com.SavoryWok.service.impl;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SavoryWok.dao.CategorySecondGroupDao;
import com.SavoryWok.dao.DishesDao;
import com.SavoryWok.entity.IngredientCategoryGroup;
import com.SavoryWok.entity.Dishes;
import com.SavoryWok.entity.IngredientsDetail;
import com.SavoryWok.service.DishesService;

@Transactional
@Service("DishesService")
public class DishesServiceImpl implements DishesService {

    @Resource
    private DishesDao DishesDao;

    @Override
    public Integer CountPageDishesFromCategory(Integer cid) {
        Integer count = DishesDao.countByCategorySecondCategoryCid(cid);
        return (count % 6 == 0 ? (count / 6) : (count / 6 + 1));
    }

    @Override
    public Integer CountPageDishesFromCategorySecond(Integer csid) {
        Integer count = DishesDao.countByCategorySecondCsid(csid);
        return (count % 6 == 0 ? (count / 6) : (count / 6 + 1));
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
    public List<Dishes> findDishesByCasid(Integer casid) {
        return DishesDao.findDishesByCasid(casid);
    }

    @Override
    public Dishes getDishById(Integer id) {
        return DishesDao.findWithStepsAndIngredients(id);
    }
    
    
    @Autowired
    private CategorySecondGroupDao categorySecondGroupDao;

    @Override
    public List<Dishes> findByCsname(String csname, Integer page) {
        System.out.println("===== Start querying categories:" + csname + " =====");
        IngredientCategoryGroup group = categorySecondGroupDao.findByCsname(csname);
        System.out.println("Queried Group Data：" + (group != null ? group.getCsids() : "null"));
        
   
        if(group == null || group.getCsids() == null) {
            return Collections.emptyList();
        }
        
        List<Integer> csids = Arrays.stream(group.getCsids().split(","))
                                  .map(String::trim)
                                  .map(Integer::parseInt)
                                  .collect(Collectors.toList());
        System.out.println("Converted CSIDs List：" + csids);
        
        return DishesDao.findByCsids(csids, page);
    }


    @Override
    public Integer countPageByCsname(String csname) {
    	IngredientCategoryGroup group = categorySecondGroupDao.findByCsname(csname);
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