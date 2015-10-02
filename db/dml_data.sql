-- category --
INSERT INTO category(id, category_code, name) VALUES (1, 1, 'Business');
INSERT INTO category(id, category_code, name) VALUES (2, 2, 'Education');
INSERT INTO category(id, category_code, name) VALUES (3, 3, 'Fiction');
INSERT INTO category(id, category_code, name) VALUES (4, 4, 'Non-Fiction');
INSERT INTO category(id, category_code, name) VALUES (5, 5, 'Children');
INSERT INTO category(id, category_code, name) VALUES (6, 6, 'Entertiment');

-- item_type  --
INSERT INTO item_type(id, item_type_code, name) VALUES (1, 1, 'Book');
INSERT INTO item_type(id, item_type_code, name) VALUES (2, 2, 'DVD');
INSERT INTO item_type(id, item_type_code, name) VALUES (3, 3, 'Audio Book');

-- item_types_categories -- 
INSERT INTO item_types_categories(item_type_code, category_code)VALUES (1, 1);
INSERT INTO item_types_categories(item_type_code, category_code)VALUES (1, 2);
INSERT INTO item_types_categories(item_type_code, category_code)VALUES (1, 3);
INSERT INTO item_types_categories(item_type_code, category_code)VALUES (1, 4);
INSERT INTO item_types_categories(item_type_code, category_code)VALUES (1, 5);

INSERT INTO item_types_categories(item_type_code, category_code)VALUES (2, 2);
INSERT INTO item_types_categories(item_type_code, category_code)VALUES (2, 6);

INSERT INTO item_types_categories(item_type_code, category_code)VALUES (3, 3);
INSERT INTO item_types_categories(item_type_code, category_code)VALUES (3, 4);
INSERT INTO item_types_categories(item_type_code, category_code)VALUES (3, 5);

-- customer_type --
INSERT INTO customer_type(id, books, customer_type_code, name, weeks) VALUES (1, 7, 1, 'Individual', 2);
INSERT INTO customer_type(id, books, customer_type_code, name, weeks) VALUES (2, 20, 2, 'Businss', 4);

-- rental_status_type -- 
INSERT INTO rental_status_type(id, name, rental_status_code) VALUES (1, 'borrowed', 1);
INSERT INTO rental_status_type(id, name, rental_status_code) VALUES (2, 'returned', 2);

-- data --

-- item --
INSERT INTO item(id, author, name, item_code, rental_status, category_code, item_type_code) VALUES (1, 'autor 1', 'book 1', 1, true, 1, 1);
INSERT INTO item(id, author, name, item_code, rental_status, category_code, item_type_code) VALUES (2, 'autor 2', 'book 2', 2, true, 2, 1);
INSERT INTO item(id, author, name, item_code, rental_status, category_code, item_type_code) VALUES (3, 'autor 3', 'book 3', 3, true, 3, 1);
INSERT INTO item(id, author, name, item_code, rental_status, category_code, item_type_code) VALUES (4, 'autor 4', 'book 4', 4, true, 4, 1);
INSERT INTO item(id, author, name, item_code, rental_status, category_code, item_type_code) VALUES (5, 'autor 5', 'book 5', 5, true, 5, 1);

INSERT INTO item(id, author, name, item_code, rental_status, category_code, item_type_code) VALUES (6, 'autor 6', 'dvd 1', 6, true, 2, 2);
INSERT INTO item(id, author, name, item_code, rental_status, category_code, item_type_code) VALUES (7, 'autor 7', 'dvd 2', 7, true, 6, 2);

INSERT INTO item(id, author, name, item_code, rental_status, category_code, item_type_code) VALUES (8, 'autor 3', 'book 3', 8, true, 3, 3);
INSERT INTO item(id, author, name, item_code, rental_status, category_code, item_type_code) VALUES (9, 'autor 4', 'book 4', 9, true, 4, 3);
INSERT INTO item(id, author, name, item_code, rental_status, category_code, item_type_code) VALUES (10, 'autor 5', 'book 5', 10, true, 5, 3);

-- customer -- 
INSERT INTO customer(id, customer_code, name, customer_type_code) VALUES (1, 1, 'customer 1', 1);
INSERT INTO customer(id, customer_code, name, customer_type_code) VALUES (2, 2, 'customer 2', 2);

-- rental --
INSERT INTO rental(id, rent_date, return_date, customer_code, item_code, rental_status_code) VALUES (1, '2015-10-02 15:42:16', null, 1, 1, 1);
INSERT INTO rental(id, rent_date, return_date, customer_code, item_code, rental_status_code) VALUES (2, '2015-09-02 15:42:16', '2015-09-14 15:42:16', 2, 1, 2);

-- hibernate_sequences --
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('category', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('item_type', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('customer_type', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('item', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('customer', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('rental_status_type', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('rental', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('item_types_categories', 1);





