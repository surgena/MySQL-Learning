use coffee_store;
select*from products;
select*from CUSTOMERS;
select*from Orders;
describe products;
describe CUSTOMERS;
describe Orders;
truncate table Orders;
insert into products (name,price,coffee_orgin)
values ('espresso',2.50,'brazil'),('macchiato',3.00,'brazil'),('cappuccino',3.50,'costa rico'),('latte',3.50,'indonesia'),('americano',3.00,'brazil'),('flat white',3.50,'indonesia'),('filter',4.50,'india');
INSERT INTO CUSTOMERS (FIRST_NAME, LASY_NAME, GENDER, PHONE_NUMBER) VALUES ('Chris','Martin','M','01123147789'),('Emma','Law','F','01123439899'),('Mark','Watkins','M','01174592013'),('Daniel','Williams','M',NULL),('Sarah','Taylor','F','01176348290'),('Katie','Armstrong','F','01145787353'),('Michael','Bluth','M','01980289282'),('Kat','Nash','F','01176987789'),('Buster','Bluth','M','01173456782'),('Charlie',NULL,'F','01139287883'),('Lindsay','Bluth','F','01176923804'),('Harry','Johnson','M',NULL),('John','Smith','M','01174987221'),('John','Taylor','M',NULL),('Emma','Smith','F','01176984116'),('Gob','Bluth','M','01176985498'),('George','Bluth','M','01176984303'),('Lucille','Bluth','F','01198773214'),('George','Evans','M','01174502933'),('Emily','Simmonds','F','01899284352'),('John','Smith','M','01144473330'),('Jennifer',NULL,'F',NULL),('Toby','West','M','01176009822'),('Paul','Edmonds','M','01966947113');
INSERT INTO Orders (product_id,customer_id,order_time) VALUES(1,1,'2017-01-01 08:02:11'),(1,2,'2017-01-01 08:05:16'),
(5,12,'2017-01-01 08:44:34'),(3,4,'2017-01-01 09:20:02'),(1,9,'2017-01-01 11:51:56'),(6,22,'2017-01-01 13:07:10');

SELECT name from products;
select p.name,O.Order_time from Orders O
inner join products p on O.product_id=p.id;