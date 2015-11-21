INSERT INTO categories (id, name) VALUES (1, 'Fine Dining');

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


INSERT INTO restaurant (id, name, description, address1, address2, town, county, postcode, category_id, phone, photo_url)
VALUES (1, 'The Ship Inn', '', 'King Street', '', 'Norwich', 'Norfolk', 'NR1 1PH', 1, '01472 822308', 'ship_inn.png');

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (1, 1, 'Beef Strips', 'Deep Fried Crispy Beef Strips in a Hoisin, Plum & Chilli Sauce with salad leaves & Spring onion', false, false, false, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (1, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (1, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (2, 1, 'Scallops', 'Scallops, Chorizo, Aioli & Sun Blush Tomato.', false, false, false, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (2, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (2, 8);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (3, 1, 'Goats Cheese', 'Grilled Honey Glazed Goats Cheese, Pear Ketchup', false, false, false, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (3, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (3, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (3, 7);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (4, 1, 'PÂTÉ', 'Chicken Liver, Port & Brandy Pate, Cumberland Sauce & Basil Croutes', false, false, false, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (4, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (4, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (5, 1, 'Whitebait', 'Deep Fried Whitebait with Salad, Lemon and Tartare Sauce', false, false, false, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (5, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (5, 5);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (5, 14);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (6, 1, 'Beef Strips', 'Crispy Beef Strips in a Hoisin, Plum & Chilli Sauce with Salad leaves & Spring Onion with Coriander & Ginger Rice', false, false, false, 0, 11.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (6, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (6, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (7, 1, 'Whitebait', 'Deep Fried Whitebait with Salad, Lemon, Tartare Sauce & Hand Cut Chips', false, false, false, 0, 11.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (7, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (7, 5);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (7, 14);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (8, 1, 'Fillet Steak', 'Char Grilled Fillet (approx. 7oz) with Hand Cut Chips, Sautéed Mushrooms, Crispy Onion Rings, Garden Peas & a Brandy & Peppercorn sauce', false, false, false, 0, 22.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (8, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (8, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (9, 1, 'Haddock Fillet', 'Haddock Fillet (8-10 oz.) in a light crispy Beer Batter with Mushy Peas & Hand Cut Chips', false, false, false, 0, 11.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (9, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (9, 5);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (10, 1, 'Fish Pie', 'Smoked Haddock, Salmon & Haddock in a Creamy Sauce topped with Creamed Potato and Herb Gratin served with Seasonal Vegetables', false, false, false, 0, 10.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (10, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (10, 5);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (10, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (10, 14);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (11, 1, 'Vegetable Thai Green Curry With Coriander Rice & Poppadums’s', '', true, true, false, 0, 9.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (11, 1);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (11, 7);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (12, 1, 'Mushrooms & Parmesan Risotto With Basil Oil & Rocket', '', true, true, false, 0, 9.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (12, 7);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (13, 1, 'Apple & Berry Crumble & Custard', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (13, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (13, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (13, 4);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (14, 1, 'Cheesecake With Fresh Fruit & Fruit Coulis', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (14, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (14, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (14, 4);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (15, 1, 'Chocolate Tart, White Chocolate Mousse & Chocolate Brownie With Blackcurrant Sorbet', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (15, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (15, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (15, 4);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (16, 1, 'Sticky Toffee Pudding With Vanilla Ice-Cream', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (16, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (16, 7);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (40, 1, 'Vanilla Creme Brulee Wtih Caramel Shard & Flamed Meringue', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (40, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (40, 7);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (17, 1, 'Classic Tiramisu', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (17, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (17, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (18, 1, 'Ships Cheese Platter', 'A Selection of Cheeses served with Crackers & Chutney', false, true, false, 0, 6.5, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (18, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (18, 2);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (19, 1, 'Selection Of Ice-Cream', 'Vanilla, Chocolate or Strawberry', false, true, false, 0, 4.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (19, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (19, 7);

