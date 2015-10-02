package com.lg.library.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
/**
 * Created by Benek on 2015-10-02.
 */
@Entity
@Table(name = "rental_status_type")
public class RentalStatusType extends BaseModel{

    @Column(name = "name", unique = true, nullable = false)
    protected String name;

    @Column(name = "rental_status_code", unique = true, nullable = false)
    protected Integer rentalStatusCode;

    public RentalStatusType(){

    }

    public RentalStatusType(String name, Integer rentalStatusCode) {
        this.name = name;
        this.rentalStatusCode = rentalStatusCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getRentalStatusCode() {
        return rentalStatusCode;
    }

    public void setRentalStatusCode(Integer rentalStatusCode) {
        this.rentalStatusCode = rentalStatusCode;
    }
}
