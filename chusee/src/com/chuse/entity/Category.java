package com.chuse.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

@Table(name = "category")
@Entity
public class Category implements Serializable {

    private static final long serialVersionUID = 1L;

    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    private Integer cid;

    private String cname;
    
    private String cimage;

    // 使用 @ManyToMany 注解，表示多对多关系
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
        name = "category_categorysecond", // 关联表名称
        joinColumns = @JoinColumn(name = "cid"), // 当前表的外键
        inverseJoinColumns = @JoinColumn(name = "csid") // 对方表的外键
    )
    @OrderBy(value = "csid") // 按照 csid 排序
    private Set<CategorySecond> categorySeconds = new HashSet<CategorySecond>();

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCimage(String cname) {
        this.cname = cname;
    }
    
    public String getCimage() {
        return cimage;
    }

    public void setCname(String cimage) {
        this.cimage = cimage;
    }

    public Set<CategorySecond> getCategorySeconds() {
        return categorySeconds;
    }

    public void setCategorySeconds(Set<CategorySecond> categorySeconds) {
        this.categorySeconds = categorySeconds;
    }
}