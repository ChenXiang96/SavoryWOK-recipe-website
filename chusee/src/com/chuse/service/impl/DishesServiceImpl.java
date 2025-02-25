package com.chuse.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.chuse.dao.DishesDao;
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

    
    @Override
    public List<Dishes> findHot() {
        return DishesDao.findHot();
    }

    @Override
    public List<Dishes> findNew() {
        return DishesDao.findNew();
    }
    
/**    @Override
    public Dishes getDishWithIngredients(Integer pid) {
        return DishesDao.findByIdWithIngredients(pid);
    }
    
    @Override
    public void addIngredient(Integer pid, String item, String qty) {
        Dishes dish = DishesDao.get(pid);
        
        IngredientsDetail detail = new IngredientsDetail();
        detail.setItem(item);
        detail.setQty(qty);
        
        dish.getIngredients().add(detail);
        DishesDao.update(dish);
    }
 **/
    
}