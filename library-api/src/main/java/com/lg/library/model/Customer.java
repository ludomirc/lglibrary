package com.lg.library.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by Benek on 2015-09-29.
 */
@Entity
@Table(name = "customer")
public class Customer extends BaseModel {

    @Column(name = "name", unique = true, nullable = false)
    protected String name;

    @Column(name = "customer_code", unique = true, nullable = false)
    protected String customerCode;

    @ManyToOne
    @JoinColumn(name = "customer_type_code", nullable = false)
    protected CustomerType customerType;

    @OneToMany(fetch = FetchType.LAZY,mappedBy="customer")
    protected Collection<Rental> rentals;

    public Customer(){

    }

    public Customer(String name, String customerCode, CustomerType customerType, Collection<Rental> rentals) {
        this.name = name;
        this.customerCode = customerCode;
        this.customerType = customerType;
        this.rentals = rentals;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCustomerCode() {
        return customerCode;
    }

    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }

    public CustomerType getCustomerType() {
        return customerType;
    }

    public void setCustomerType(CustomerType customerType) {
        this.customerType = customerType;
    }

    public Collection<Rental> getRentals() {
        return rentals;
    }

    public void setRentals(Collection<Rental> rentals) {
        this.rentals = rentals;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "name='" + name + '\'' +
                ", customerCode='" + customerCode + '\'' +
                ", customerType=" + customerType +
                ", rentals=" + rentals +
                '}';
    }
}
