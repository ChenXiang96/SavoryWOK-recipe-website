package com.SavoryWok.dao;

import com.SavoryWok.entity.Special;
import java.util.Optional;

public interface SpecialDao extends BaseDao<Special> {
   
    Optional<Special> findById(Integer sid);
}
