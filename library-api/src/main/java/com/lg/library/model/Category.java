package com.lg.library.model;

import javax.persistence.*;

/**
 * Created by Benek on 2015-09-29.
 */
@Entity
@Table(name = "category")
public class Category extends BaseModel{

    @Column(name = "name", unique = true, nullable = false)
    protected String name;

    @Column(name = "category_code", unique = true, nullable = false)
    protected Integer categoryCode;

    public Category(){
    }

    public Category(String name, Integer categoryCode) {
        this.name = name;
        this.categoryCode = categoryCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCategoryCode() {
        return categoryCode;
    }

    public void setCategoryCode(Integer categoryCode) {
        this.categoryCode = categoryCode;
    }

    @Override
    public String toString() {
        return "Category{" +
                "name='" + name + '\'' +
                ", categoryCode=" + categoryCode +
                '}';
    }
}
