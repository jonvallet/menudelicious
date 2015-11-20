create table TODO (
    id int identity(1,1),
    name varchar(40),
    description varchar(255),
    done boolean
);

create table restaurant (
    id int identity(1,1),
    name varchar(255),
    description varchar(255),
    address1 varchar(40),
    address2 varchar(40),
    town varchar(40),
    county varchar(40),
    postcode varchar(8)
);

create table menu_items (
    id int identity(1,1),
    restaurant_id int,
    name varchar(255),
    description varchar(255),
    gluten_free boolean,
    vegan boolean,
    veg boolean,
    spice int
);

create table diet (
    id int identity(1,1),
    name varchar(255)
);

create table menu_diet (
    id int identity(1,1),
    menu_item_id int,
    diet_id int
);
