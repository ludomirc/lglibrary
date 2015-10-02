package com.lg.library.model;

import javax.persistence.*;

/**
 * Created by Benek on 2015-09-29.
 */
@Entity
@Table(name = "item")
public class Item extends BaseModel {

    @Column(name = "name", nullable = false)
    protected String name;

    @Column(name = "author", nullable = false)
    protected String author;

    @Column(name = "item_code", nullable = false)
    protected Integer itemCode;

    @ManyToOne
    @JoinColumn(name = "item_type_code", nullable = false)
    protected ItemType itemType;

    @ManyToOne
    @JoinColumn(name = "category_code", nullable = false)
    protected Category category;

    @Column(name = "rental_status")
    protected Boolean rentalStatus;

    public Item(){
    }

    public Item(String name, String author, Integer itemCode, ItemType itemType, Category category, Boolean rentalStatus) {
        name = name;
        author = author;
        this.itemCode = itemCode;
        this.itemType = itemType;
        this.category = category;
        this.rentalStatus = rentalStatus;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        author = author;
    }

    public Integer getItemCode() {
        return itemCode;
    }

    public void setItemCode(Integer itemCode) {
        this.itemCode = itemCode;
    }

    public ItemType getItemType() {
        return itemType;
    }

    public void setItemType(ItemType itemType) {
        this.itemType = itemType;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Boolean getRentalStatus() {
        return rentalStatus;
    }

    public void setRentalStatus(Boolean rentalStatus) {
        this.rentalStatus = rentalStatus;
    }

    @Override
    public String toString() {
        return "Item{" +
                "name='" + name + '\'' +
                ", author='" + author + '\'' +
                ", itemCode=" + itemCode +
                ", itemType=" + itemType +
                ", category=" + category +
                ", rentalStatus=" + rentalStatus +
                '}';
    }
}


