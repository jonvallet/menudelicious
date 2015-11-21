INSERT INTO restaurant (id, name, description, address1, address2, town, county, postcode, category_id, phone, photo_url)
  VALUES (2, 'The Library', 'Formerly the UK''s first public subscription library, this wonderful listed building is now home to the Library Restaurant', '4A Guildhall Hill', '', 'Norwich', 'Norfolk', 'NR2 1JH', 1, '01603 616606', 'library.png');

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (30, 2, 'Wood Grilled Duck Breast', 'With Navel orange, chicory, green peppercorn vinaigrette & crispy croutons', false, false, false, 0, 6.50, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (30, 3);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (30, 11);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (30, 14);


INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (31, 2, 'Bruschetta', 'Roasted red pepper & goat''s cheese with toasted pine nuts, basil, pesto and rocket', false, false, true, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (31, 3);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (31, 8);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (31, 11);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (31, 11);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (32, 2, 'Assiette of Parma Ham', 'Alongside sun-blushed tomatoes, rocket & Manchego cheese with balsamic reduction', false, false, false, 0, 6.20, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (32, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (32, 14);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (33, 2, 'French Onion Soup', 'Flavoured with local cider topped with Gruyere cheese croutons', false, false, true, 0, 6.95, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (33, 14);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (33, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (34, 2, 'Local Rock Oysters -Half Dozen- ', 'Served naturally or topped with Japanese-style dressing with pickled ginger, soy, wasdabi and toasted seasame seeds OR traditional bloody mary dressing.', false, false, false, 2, 12.50, 'Starter');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (34, 8);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (34, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (34, 13);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (34, 14);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (35, 2, '"Juicy Lucy"', 'Mozzarella stuff beef burger served with caramelised onion and crispy bacon', false, false, false, 0, 11.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (35, 12);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (35, 13);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (36, 2, 'Crispy Confit Duck Leg', 'With creamy mashed potatoes, sweet & sour braised red cabbage with vine fruits & red wine jus', false, false, false, 0, 13.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (36, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (36, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (36, 14);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (37, 2, 'Fillet Steak 8oz', 'Locally sourced hand-cut steaks served plain or with a choice of garlic butter, béarnaise, red wine, peppercorn or blue cheese sauce (all 75p each) All served with homemade French fries or hand cut chips, onion rings, salad and Californian coleslaw', false, false, false, 0, 19.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (37, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (37, 14);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (37, 9);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (38, 2, 'Leek, Potato & Smoked Dapple Cheese Tart', 'Alongside slow-roast winter vegetables, flavoured with thyme & lemon', false, false, true, 0, 11.95, 'Main');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (38, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (38, 7);


INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (39, 2, 'Baked Vanilla Cheesecake', 'With ginger beer granite, apricot puree and honeycomb', false, false, false, 0, 6.25, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (39, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (39, 7);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (39, 4);

INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (42, 2, 'Summer Pudding Terrine', 'with clotted ice cream, summer berries and Pimms fluid gel', false, true, false, 0, 5.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (42, 2);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (42, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (42, 7);


INSERT INTO menu_items (id, restaurant_id, name, description, gluten_free, vegan, veg, spice, price, course)
  VALUES (41, 2, 'Ice Cream', 'Vanilla, Chocolate or Strawberry', false, false, false, 0, 4.95, 'Dessert');
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (41, 4);
INSERT INTO menu_diet (menu_item_id, diet_id) VALUES (41, 7);
