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

    // 菜品字段映射处理器（复用）
    private static final RowMapper<Dishes> DISH_ROW_MAPPER = (rs, rowNum) -> {
        Dishes dish = new Dishes();
        dish.setPid(rs.getInt("pid"));
        dish.setIs_hot(rs.getInt("is_hot"));
        dish.setPname(rs.getString("pname"));
        dish.setImage(rs.getString("image"));
        dish.setPdesc(rs.getString("pdesc"));
        dish.setPdate(rs.getDate("pdate"));
        dish.setPcontent(rs.getString("pcontent"));
        dish.setSid(rs.getInt("sid")); // 接收联表查询的专题ID
        return dish;
    };

    @Override
    public List<Dishes> findDishesBySpecialId(Integer sid) {
        String sql = 
            "SELECT d.*, sd.sid " +
            "FROM dishes d " +
            "INNER JOIN special_dishes sd ON d.pid = sd.pid " +
            "WHERE sd.sid = ?";
        
        return jdbcTemplate.query(sql, new Object[]{sid}, DISH_ROW_MAPPER);
    }
}