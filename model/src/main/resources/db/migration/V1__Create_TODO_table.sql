create table TODO (
    id int identity(1,1),
    name varchar(40),
    description varchar(255),
    done boolean
);

create table categories (
    id int identity(1,1),
    name varchar(255)
);

create table restaurant (
    id int identity(1,1),
    name varchar(255),
    description varchar(255),
    address1 varchar(40),
    address2 varchar(40),
    town varchar(40),
    county varchar(40),
    postcode varchar(8),
    category_id int,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    phone varchar(20),
    photo_url varchar(255)
);

create table menu_items (
    id int identity(1,1),
    restaurant_id int,
    name varchar(255),
    description varchar(255),
    gluten_free boolean,
    vegan boolean,
    veg boolean,
    spice int,
    price float,
    course varchar(10),
    FOREIGN KEY (restaurant_id) REFERENCES restaurant(id)
);

create table allergies (
    id int identity(1,1),
    name varchar(255)
);

create table menu_diet (
    menu_item_id int,
    diet_id int,
    FOREIGN KEY (menu_item_id) REFERENCES menu_items(id),
    FOREIGN KEY (diet_id) REFERENCES allergies(id)
);
