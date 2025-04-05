package com.SavoryWok.entity;

public class SpecialDishes {
    private Integer sid;  // 对应数据库中的 sid 字段（外键关联 special 表）
    private Integer pid;  // 对应数据库中的 pid 字段（外键关联 dishes 表）

    // 无参构造函数（必须）
    public SpecialDishes() {
    }

    // 带参构造函数（可选）
    public SpecialDishes(Integer sid, Integer pid) {
        this.sid = sid;
        this.pid = pid;
    }

    // Getter & Setter
    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }
}
