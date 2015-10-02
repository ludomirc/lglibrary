package com.lg.library.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by Benek on 2015-09-29.
 */
@Entity
@Table(name = "customer_type")
public class CustomerType extends BaseModel {

    @Column(name = "name", unique = true, nullable = false)
    protected String name;

    @Column(name = "customer_type_code", unique = true, nullable = false)
    protected Integer customerTypeCode;

    @Column(name = "books", nullable = false)
    protected Integer books;

    @Column(name = "weeks", nullable = false)
    protected Integer weeks;

    public CustomerType(){
    }

    public CustomerType(String name, Integer customerTypeCode, Integer books, Integer weeks) {
        this.name = name;
        this.customerTypeCode = customerTypeCode;
        this.books = books;
        this.weeks = weeks;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCustomerTypeCode() {
        return customerTypeCode;
    }

    public void setCustomerTypeCode(Integer customerTypeCode) {
        this.customerTypeCode = customerTypeCode;
    }

    public Integer getBooks() {
        return books;
    }

    public void setBooks(Integer books) {
        this.books = books;
    }

    public Integer getWeeks() {
        return weeks;
    }

    public void setWeeks(Integer weeks) {
        this.weeks = weeks;
    }

    @Override
    public String toString() {
        return "CustomerType{" +
                "name='" + name + '\'' +
                ", customerTypeCode=" + customerTypeCode +
                ", books=" + books +
                ", weeks=" + weeks +
                '}';
    }
}
