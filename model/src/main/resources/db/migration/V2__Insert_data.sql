INSERT INTO categories (id, name) VALUES (1, 'Fine Dining');
INSERT INTO restaurant (id, name, description, address1, address2, town, county, postcode, category_id)
VALUES (1, 'The Ship Inn', '', 'King Street', '', 'Norwich', 'Norfolk', 'NR1 1PH', 1);


INSERT INTO restaurant (id, name, description, address1, address2, town, county, postcode, category_id)
VALUES (2, 'The Library', '', '4A Guildhall Hill', '', 'Norwich', 'Norfolk', 'NR2 1JH', 1);

INSERT INTO menu_items (id, name, description, gluten_free, vegan, veg, spice, price, course)
VALUES (1, 'Beef Strips', 'Crispy Beef Strips in a Hoisin, Plum & Chilli Sauce with Salad leaves & Spring Onion with Coriander & Ginger Rice', false, false, false, 0, 11.95, 'Main');

INSERT INTO allergies (id, name) VALUES (1, 'Celery');
INSERT INTO allergies (id, name) VALUES (2, 'Cereals containing gluten');
INSERT INTO allergies (id, name) VALUES (3, 'Wheat');
INSERT INTO allergies (id, name) VALUES (4, 'Crustaceans');
INSERT INTO allergies (id, name) VALUES (5, 'Eggs');
INSERT INTO allergies (id, name) VALUES (6, 'Fish');
INSERT INTO allergies (id, name) VALUES (7, 'Lupin');
INSERT INTO allergies (id, name) VALUES (8, 'Milk');
INSERT INTO allergies (id, name) VALUES (9, 'Molluscs');
INSERT INTO allergies (id, name) VALUES (10, 'Mustard');
INSERT INTO allergies (id, name) VALUES (11, 'Nuts');
INSERT INTO allergies (id, name) VALUES (12, 'Peanuts');
INSERT INTO allergies (id, name) VALUES (13, 'Sesame seeds');
INSERT INTO allergies (id, name) VALUES (14, 'Soya');

INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (1, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (1, 13);
