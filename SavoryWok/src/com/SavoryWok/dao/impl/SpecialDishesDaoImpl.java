package com.SavoryWok.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.SavoryWok.dao.SpecialDishesDao;
import com.SavoryWok.entity.Dishes;

@Repository("specialDishesDao")
public class SpecialDishesDaoImpl implements SpecialDishesDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private static final RowMapper<Dishes> DISH_ROW_MAPPER = (rs, rowNum) -> {
        Dishes dish = new Dishes();
        dish.setId(rs.getInt("id"));
        dish.setIs_hot(rs.getInt("is_hot"));
        dish.setName(rs.getString("name"));
        dish.setImage(rs.getString("image"));
        dish.setPdesc(rs.getString("pdesc"));
        dish.setDate(rs.getDate("date"));
        dish.setContent(rs.getString("content"));
        dish.setSid(rs.getInt("sid"));
        return dish;
    };

    @Override
    public List<Dishes> findDishesBySpecialId(Integer sid) {
        String sql = 
            "SELECT d.*, sd.sid " +
            "FROM dishes d " +
            "INNER JOIN special_dishes sd ON d.id = sd.did " +
            "WHERE sd.sid = ?";
        
        return jdbcTemplate.query(sql, new Object[]{sid}, DISH_ROW_MAPPER);
    }
}