package com.SavoryWok.entity;

public class SpecialDishes {
    private Integer sid; 
    private Integer did; 

    public SpecialDishes() {
    }


    public SpecialDishes(Integer sid, Integer did) {
        this.sid = sid;
        this.did = did;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }
}
