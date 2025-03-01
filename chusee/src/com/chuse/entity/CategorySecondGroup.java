package com.chuse.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Immutable;

@Immutable // 标记为不可变实体
@Table(name = "v_categorysecond_group")
@Entity
public class CategorySecondGroup implements Serializable {
    @Id
    private String csname;
    
    @Column(name = "csids")
    private String csids;

    // Getter and Setter
    public String getCsname() { return csname; }
    public void setCsname(String csname) { this.csname = csname; }
    public String getCsids() { return csids; }
    public void setCsids(String csids) { this.csids = csids; }
}
