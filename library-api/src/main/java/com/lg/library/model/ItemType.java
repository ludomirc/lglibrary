package com.lg.library.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by Benek on 2015-09-29.
 */
@Entity
@Table(name = "item_type")
public class ItemType extends BaseModel {

    @Column(name = "name", unique = true, nullable = false)
    String name;

    @Column(name = "item_type_code", unique = true, nullable = false)
    Integer itemTypeCode;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "item_types_categories",
            joinColumns = {
                    @JoinColumn(table = "item_type", name = "item_type_code", referencedColumnName = "item_type_code")
            },
            inverseJoinColumns = {
                    @JoinColumn(table = "category", name = "category_code", referencedColumnName = "category_code")
            }
    )
    protected Collection<Category> categories;

    public ItemType() {
    }

    public ItemType(String name, Integer itemTypeCode) {
        this.name = name;
        this.itemTypeCode = itemTypeCode;
    }

    public ItemType(String name, Integer itemTypeCode, Collection<Category> categories) {
        this.name = name;
        this.itemTypeCode = itemTypeCode;
        this.categories = categories;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getItemTypeCode() {
        return itemTypeCode;
    }

    public void setItemTypeCode(Integer itemTypeCode) {
        this.itemTypeCode = itemTypeCode;
    }

    public Collection<Category> getCategories() {
        return categories;
    }

    public void setCategories(Collection<Category> categories) {
        this.categories = categories;
    }
}
