package com.SavoryWok.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Table(name = "categorysecond2_dishes") // 关键：映射到真实表名
@Entity
@IdClass(CategorySecond2DishesId.class) // 使用复合主键类
public class CategorySecond2Dishes implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id // 联合主键1
    @Column(name = "casid")
    private Integer casid;

    @Id // 联合主键2
    @Column(name = "pid")
    private Integer pid;

    // 省略构造函数和Get/Set方法
}

// 复合主键类（必须实现Serializable）
class CategorySecond2DishesId implements Serializable {
    private Integer casid;
    private Integer pid;

    // 必须重写equals和hashCode
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof CategorySecond2DishesId)) return false;
        CategorySecond2DishesId that = (CategorySecond2DishesId) o;
        return casid.equals(that.casid) && pid.equals(that.pid);
    }

    @Override
    public int hashCode() {
        return casid.hashCode() + pid.hashCode();
    }
}
