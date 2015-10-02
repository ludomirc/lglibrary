package com.lg.library.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Benek on 2015-10-02.
 */
@Entity
@Table(name = "rental")
public class Rental extends BaseModel {

    @ManyToOne
    @JoinColumn(name = "item_code", nullable = false)
    protected Item item;

    @ManyToOne
    @JoinColumn(name = "customer_code", nullable = false)
    protected Customer customer;

    @ManyToOne
    @JoinColumn(name = "rental_status_code", nullable = false)
    protected RentalStatusType rentalStatus;

    @Column(name = "rent_date", nullable = false)
    protected Timestamp rentDate;

    @Column(name = "return_date", nullable = true)
    protected Timestamp returnDate;

    public Rental() {
    }

    public Rental(Item item, Customer customer, RentalStatusType rentalStatus, Timestamp rentDate, Timestamp returnDate) {
        this.item = item;
        this.customer = customer;
        this.rentalStatus = rentalStatus;
        this.rentDate = rentDate;
        this.returnDate = returnDate;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public RentalStatusType getRentalStatus() {
        return rentalStatus;
    }

    public void setRentalStatus(RentalStatusType rentalStatusType) {
        this.rentalStatus = rentalStatusType;
    }

    public Timestamp getRentDate() {
        return rentDate;
    }

    public void setRentDate(Timestamp rentDate) {
        this.rentDate = rentDate;
    }

    public Timestamp getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Timestamp returnDate) {
        this.returnDate = returnDate;
    }

    @Override
    public String toString() {
        return "Rental{" +
                "item=" + item +
                ", customer=" + customer +
                ", rentalStatusType=" + rentalStatus +
                ", rentDate=" + rentDate +
                ", returnDate=" + returnDate +
                '}';
    }
}
