-- Create schema script

    create table category (
        id int8 not null,
        category_code int4 not null,
        name varchar(255) not null,
        primary key (id)
    );

    create table customer (
        id int8 not null,
        customer_code varchar(255) not null,
        name varchar(255) not null,
        customer_type_code int8 not null,
        primary key (id)
    );

    create table customer_type (
        id int8 not null,
        books int4 not null,
        customer_type_code int4 not null,
        name varchar(255) not null,
        weeks int4 not null,
        primary key (id)
    );

    create table item (
        id int8 not null,
        author varchar(255) not null,
        item_code int4 not null,
        name varchar(255) not null,
        rental_status boolean,
        category_code int8 not null,
        item_type_code int8 not null,
        primary key (id)
    );

    create table item_type (
        id int8 not null,
        item_type_code int4 not null,
        name varchar(255) not null,
        primary key (id)
    );

    create table item_types_categories (
        item_type_code int4 not null,
        category_code int4 not null
    );

    create table rental (
        id int8 not null,
        rent_date timestamp not null,
        return_date timestamp,
        customer_code int8 not null,
        item_code int8 not null,
        rental_status_code int8 not null,
        primary key (id)
    );

    create table rental_status_type (
        id int8 not null,
        name varchar(255) not null,
        rental_status_code int4 not null,
        primary key (id)
    );

    alter table category 
        add constraint UK_category_category_code  unique (category_code);

    alter table category 
        add constraint UK_category_name  unique (name);

    alter table customer 
        add constraint UK_customer_customer_code  unique (customer_code);

    alter table customer 
        add constraint UK_customer_name  unique (name);

    alter table customer_type 
        add constraint UK_customer_type_customer_type_code  unique (customer_type_code);

    alter table customer_type 
        add constraint UK_customer_type_name  unique (name);

    alter table item_type 
        add constraint UK_item_type_item_type_code  unique (item_type_code);

    alter table item_type 
        add constraint UK_item_type_name  unique (name);

    alter table rental_status_type 
        add constraint UK_rental_status_type_name  unique (name);

    alter table rental_status_type 
        add constraint UK_rental_status_type_rental_status_code  unique (rental_status_code);

    alter table customer 
        add constraint FK_customer_customer_type_customer_type_code 
        foreign key (customer_type_code) 
        references customer_type;

    alter table item 
        add constraint FK_item_category_category_code
        foreign key (category_code) 
        references category;

    alter table item 
        add constraint FK_item_item_type_item_type_code
        foreign key (item_type_code) 
        references item_type;

    alter table rental 
        add constraint FK_rental_rental_customer_customer_code
        foreign key (customer_code) 
        references customer;

    alter table rental 
        add constraint FK_rental_item_item_code
        foreign key (item_code) 
        references item;

    alter table rental 
        add constraint FK_rental_rental_status_type_rental_status_code 
        foreign key (rental_status_code) 
        references rental_status_type;

    create table hibernate_sequences (
         sequence_name varchar(255) not null ,
        sequence_next_hi_value int8,
        primary key ( sequence_name ) 
    );
