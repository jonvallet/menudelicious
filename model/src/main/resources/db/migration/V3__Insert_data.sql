INSERT INTO restaurant (id, name, description, address1, address2, town, county, postcode, category_id)
  VALUES (2, 'The Library', '', '4A Guildhall Hill', '', 'Norwich', 'Norfolk', 'NR2 1JH', 1);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (20, 2, 'Beef Strips', 'Deep Fried Crispy Beef Strips in a Hoisin, Plum & Chilli Sauce with salad leaves & Spring onion', false, false, false, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (20, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (20, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (21, 2, 'Scallops', 'Scallops, Chorizo, Aioli & Sun Blush Tomato.', false, false, false, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (21, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (21, 8);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (22, 2, 'Goats Cheese', 'Grilled Honey Glazed Goats Cheese, Pear Ketchup', false, false, false, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (22, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (22, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (22, 7);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (23, 2, 'PÂTÉ', 'Chicken Liver, Port & Brandy Pate, Cumberland Sauce & Basil Croutes', false, false, false, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (23, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (23, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (24, 2, 'Whitebait', 'Deep Fried Whitebait with Salad, Lemon and Tartare Sauce', false, false, false, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (24, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (24, 5);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (24, 14);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (25, 2, 'Beef Strips', 'Crispy Beef Strips in a Hoisin, Plum & Chilli Sauce with Salad leaves & Spring Onion with Coriander & Ginger Rice', false, false, false, 0, 11.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (25, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (25, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (26, 2, 'Whitebait', 'Deep Fried Whitebait with Salad, Lemon, Tartare Sauce & Hand Cut Chips', false, false, false, 0, 11.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (26, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (26, 5);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (26, 14);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (27, 2, 'Fillet Steak', 'Char Grilled Fillet (approx. 7oz) with Hand Cut Chips, Sautéed Mushrooms, Crispy Onion Rings, Garden Peas & a Brandy & Peppercorn sauce', false, false, false, 0, 22.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (27, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (27, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (28, 2, 'Haddock Fillet', 'Haddock Fillet (8-10 oz.) in a light crispy Beer Batter with Mushy Peas & Hand Cut Chips', false, false, false, 0, 11.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (28, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (28, 5);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (29, 2, 'Fish Pie', 'Smoked Haddock, Salmon & Haddock in a Creamy Sauce topped with Creamed Potato and Herb Gratin served with Seasonal Vegetables', false, false, false, 0, 10.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (29, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (29, 5);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (29, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (29, 14);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (30, 2, 'VEGETABLE THAI GREEN CURRY WITH CORIANDER RICE & POPPADUM’S', '', true, true, false, 0, 9.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (30, 1);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (30, 7);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (31, 2, 'MUSHROOM & PARMESAN RISOTTO WITH BASIL OIL & ROCKET', '', true, true, false, 0, 9.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (31, 7);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (32, 2, 'APPLE & BERRY CRUMBLE & CUSTARD', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (32, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (32, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (32, 4);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (33, 2, 'CHEESECAKE WITH FRESH FRUIT & FRUIT COULIS', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (33, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (33, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (33, 4);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (34, 2, 'CHOCOLATE TART, WHITE CHOCOLATE MOUSSE & CHOCOLATE BROWNIE WITH BLACKCURRANT SORBET', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (34, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (34, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (34, 4);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (35, 2, 'STICKY TOFFEE PUDDING WITH VANILLA ICE-CREAM', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (35, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (35, 7);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (36, 2, 'VANILLA CRÈME BRULEE WITH CARAMEL SHARD & FLAMED MERINGUE', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (36, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (36, 7);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (37, 2, 'CLASSIC TIRAMISU', '', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (37, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (37, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (38, 2, 'SHIPS CHEESE PLATTER', 'A Selection of Cheeses served with Crackers & Chutney', false, true, false, 0, 6.5, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (38, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (38, 2);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (39, 2, 'SELECTION OF ICE-CREAM', 'Vanilla, Chocolate or Strawberry', false, true, false, 0, 4.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (39, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (39, 7);
