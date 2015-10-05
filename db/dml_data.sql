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


-- hibernate_sequences --
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('category', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('item_type', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('customer_type', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('rental_status_type', 1);
INSERT INTO hibernate_sequences(sequence_name, sequence_next_hi_value) VALUES ('item_types_categories', 1);





