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
    username varchar(40),
    house_name_no varchar(40),
    street varchar(40),
    postcode varchar(8)
);

create table menu_items (
    id int identity(1,1),
    name varchar(255),
    description varchar(255),
    like_count int,
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
