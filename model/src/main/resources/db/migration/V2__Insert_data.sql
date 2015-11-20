INSERT INTO restaurant (name, description, address1, address2, town, county, postcode)
VALUES ('The Ship Inn', '', 'King Street', '', 'Norwich', 'Norfolk', 'NR1 1PH');

INSERT INTO restaurant (name, description, address1, address2, town, county, postcode)
VALUES ('The Library', '', '4A Guildhall Hill', '', 'Norwich', 'Norfolk', 'NR2 1JH');

create table menu_items (
    id int identity(1,1),
    name varchar(255),
    description varchar(255),
    like_count int,
    spice int
);

INSERT INTO menu_items (name, description)
VALUES ('Beef Strips', 'Crispy Beef Strips in a Hoisin, Plum & Chilli Sauce with Salad leaves & Spring Onion with Coriander & Ginger Rice');


 Beef Strips (12,13)
Crispy Beef Strips in a Hoisin, Plum & Chilli Sauce with Salad leaves & Spring Onion with Coriander & Ginger Rice
11.95
