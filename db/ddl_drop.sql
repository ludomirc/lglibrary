-- Drop schema script

    alter table customer 
        drop constraint if exists fk_customer_customer_type_customer_type_codes;

    alter table item 
        drop constraint if exists fk_item_category_category_code;

    alter table item 
        drop constraint if exists fk_item_item_type_item_type_code;

    alter table rental 
        drop constraint if exists fk_rental_item_item_code;

    alter table rental 
        drop constraint if exists fk_rental_rental_customer_customer_code;

    alter table rental 
        drop constraint if exists fk_rental_rental_status_type_rental_status_code;

    drop table category cascade;

    drop table customer cascade;

    drop table customer_type cascade;

    drop table item cascade;

    drop table item_type cascade;

    drop table item_types_categories cascade;

    drop table rental cascade;

    drop table rental_status_type cascade;

    drop table hibernate_sequences cascade;