package com.SavoryWok.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Table(name = "categorysecond2_dishes") 
@Entity
@IdClass(CategorySecond2DishesId.class)
public class CategorySecond2Dishes implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "casid")
    private Integer casid;

    @Id 
    @Column(name = "id")
    private Integer id;


}


class CategorySecond2DishesId implements Serializable {
    private Integer casid;
    private Integer id;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof CategorySecond2DishesId)) return false;
        CategorySecond2DishesId that = (CategorySecond2DishesId) o;
        return casid.equals(that.casid) && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return casid.hashCode() + id.hashCode();
    }
}
