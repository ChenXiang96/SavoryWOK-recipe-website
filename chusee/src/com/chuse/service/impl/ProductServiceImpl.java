package com.chuse.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.chuse.dao.ProductDao;
import com.chuse.entity.Product;
import com.chuse.service.ProductService;

@Transactional
@Service("productService")
public class ProductServiceImpl implements ProductService {

    @Resource
    private ProductDao productDao;

    @Override
    public Integer CountPageProductFromCategory(Integer cid) {
        Integer count = productDao.countByCategorySecondCategoryCid(cid);
        return (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
    }

    @Override
    public Integer CountPageProductFromCategorySecond(Integer csid) {
        Integer count = productDao.countByCategorySecondCsid(csid);
        return (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
    }

    @Override
    public List<Product> findByCid(Integer cid, Integer page) {
        return productDao.findByCategorySecondCategoryCid(cid, page);
    }

    @Override
    public List<Product> findByCsid(Integer csid, Integer page) {
        return productDao.findByCategorySecondCsid(csid, page);
    }

    @Override
    public Product findByPid(Integer pid) {
        return productDao.findOne(pid);
    }

    @Override
    public List<Product> findHot() {
        return productDao.findHot();
    }

    @Override
    public List<Product> findNew() {
        return productDao.findNew();
    }
}