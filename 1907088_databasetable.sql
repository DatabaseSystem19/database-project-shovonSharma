
create table customer(
customer_id int primary key,
customer_name varchar2(20),
customer_mobile varchar2(11)not null unique,
customer_email varchar2(20),
customer_address VARCHAR2(20) not null
);


create table staff(
staff_id int PRIMARY KEY,
staff_name VARCHAR2(20),
staff_mobile VARCHAR2(11) not null unique,
staff_address VARCHAR2(20) not null,
staff_email varchar2(20),
salary INT check(salary>0)
);


create table food(
food_id int PRIMARY KEY,
food_name varchar2(20),
food_price int check(food_price>0),
food_status number(1) check(food_status>=0), --oracle11g doesnot support boolean so number(1) is used here where 0 means unavailable
food_description varchar2(30)
);


create table customer_order(
order_id int primary key,
customer_id int not null,
order_date date,
order_status number(1) check(order_status>=0),
bill int check(bill>0),
payment_status number(1) check(payment_status>=0),
staff_id int not null,

constraint customer_id foreign key(customer_id)  
references customer(customer_id)
on delete CASCADE ,--on update cascade not supported

constraint staff_id foreign key(staff_id) 
references staff(staff_id)  
on delete cascade --on update cascade not supported
);

create table order_item(
item_id int primary key,
order_id int not null,
food_id int not null,
quantity int check(quantity>=0),
constraint order_id foreign key(order_id) REFERENCES customer_order(order_id) on delete cascade,
constraint food_id foreign key(food_id) REFERENCES food(food_id) on delete cascade
);



