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

-- hibernate sequence--
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('item', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('customer', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('rental', 1);