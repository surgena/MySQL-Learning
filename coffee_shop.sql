create database coffee_store;
use coffee_store;
create table products(
id int auto_increment primary key,
name varchar(30),
price decimal(3,2)
);

create table CUSTOMERS(
id int auto_increment primary key,
FIRST_NAME varchar(30),
LASY_NAME varchar(20),
GENDER enum('M','F'),
PHONE_NUMBER varchar(11)
);
create table Orders(
id int auto_increment primary key,
product_id int,
customer_id int,
order_time datetime,
foreign key(product_id)references products(id),
foreign key(customer_id)references CUSTOMERS(id)
);

SHOW tables;

select*from products;
alter table products
add column coffee_orgin varchar(30);

show databases;