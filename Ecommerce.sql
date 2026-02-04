/* 2026-02-05 00:46:03 [8 ms] */ 
create database store;
/* 2026-02-05 00:48:04 [3 ms] */ 
use store;
/* 2026-02-05 00:48:06 [26 ms] */ 
create table customers(
customer_id int primary key,
name varchar(15),
email varchar(30),
phone varchar(13),
city varchar(15),
created_at date);
/* 2026-02-05 00:48:10 [24 ms] */ 
alter table customers modify email varchar(30);
/* 2026-02-05 00:48:12 [25 ms] */ 
drop table customers;
/* 2026-02-05 00:48:14 [17 ms] */ 
create table products(
product_id int primary key not null,
product_name varchar(15),
category varchar(15),
price decimal not null,
stock_quantity int);
/* 2026-02-05 00:48:18 [17 ms] */ 
drop table products;
/* 2026-02-05 00:48:29 [19 ms] */ 
create table products(
product_id int primary key not null,
product_name varchar(15),
category varchar(15),
price decimal not null,
stock_quantity int);
/* 2026-02-05 00:48:42 [12 ms] */ 
create table customers(
customer_id int primary key,
name varchar(15),
email varchar(30),
phone varchar(13),
city varchar(15),
created_at date);
/* 2026-02-05 00:48:45 [37 ms] */ 
alter table customers modify email varchar(30);
/* 2026-02-05 00:48:51 [38 ms] */ 
create table orders(
order_id int primary key,
customer_id int, foreign key (customer_id) references customers(customer_id),
order_date date,
order_status varchar(13));
/* 2026-02-05 00:48:58 [54 ms] */ 
create table order_items(order_item_id int primary key,
order_id int, foreign key (order_id) references orders(order_id),
product_id int,foreign key(product_id) references products(product_id),
quantity int,
price decimal);
/* 2026-02-05 00:49:04 [41 ms] */ 
create table payments(payment_id int primary key,
order_id int,foreign key  (order_id) references orders(order_id),
payment_date date,
payment_method varchar(13),
amount decimal,
payment_status varchar(13));
/* 2026-02-05 00:49:10 [16 ms] */ 
insert into customers(customer_id, name,email, phone, city, created_at) values
(1, 'rahul sharma', 'rahul@gmail.com', '9876543210','hyderabad','2024-1-05'),
(2, 'anjali varma', 'anjali@gmail.com', '9876543211','bangalore','2024-01-10'),
(3, 'suresh kumar', 'suresh@gmail.com', '9876543212', 'chennai', '2024-02-01'),
(4, 'Priya Singh', 'priya@gmail.com', '9876543213', 'Delhi', '2024-02-15'),
(5, 'Amit Patel', 'amit@gmail.com', '9876543214', 'Ahmedabad', '2024-03-01'),
(6, 'Neha Reddy', 'neha@gmail.com', '9876543215', 'Hyderabad', '2024-03-10'),
(7, 'Vikas Mehta', 'vikas@gmail.com', '9876543216', 'Pune', '2024-03-18'),
(8, 'Kavya Nair', 'kavya@gmail.com', '9876543217', 'Kochi', '2024-04-01');
/* 2026-02-05 00:49:14 [10 ms] */ 
insert into products(product_id,product_name,category,price,stock_quantity) values
(101,'laptop','electronics',55000,20),
(102,'smartphone','electornics',25000,30),
(103,'headphones','electronics',3000,50),
(104, 'Office Chair', 'Furniture', 7000, 15),
(105, 'Dining Table', 'Furniture', 22000, 10),
(106, 'Running Shoes', 'Footwear', 4000, 40),
(107, 'Wrist Watch', 'Accessories', 6000, 25),
(108, 'Backpack', 'Accessories', 2500, 60);
/* 2026-02-05 00:49:16 [7 ms] */ 
update products set category = 'electronics' where product_id = 102;
/* 2026-02-05 00:49:18 [8 ms] */ 
insert into orders(order_id,customer_id,order_date,order_status) values
(1001,1,'2024-04-05','delivered'),
(1002,2,'2024-04-07','delivered'),
(1003,3,'2024-04-10','shipped'),
(1004, 1, '2024-04-15', 'Delivered'),
(1005, 4, '2024-04-18', 'Cancelled'),
(1006, 5, '2024-04-20', 'Delivered'),
(1007, 6, '2024-04-22', 'Delivered'),
(1008, 7, '2024-04-25', 'Placed');
/* 2026-02-05 00:49:20 [10 ms] */ 
insert into order_items(order_item_id,order_id,product_id,quantity,price)values
(1,1001,101,1,55000),
(2,1001,103,2,3000),

(3,1002,102,1,25000),
(4,1002,108,1,2500),
(5, 1003, 106, 2, 4000),

(6, 1004, 107, 1, 6000),
(7, 1004, 108, 2, 2500),

(8, 1005, 104, 1, 7000),

(9, 1006, 105, 1, 22000),

(10, 1007, 102, 1, 25000),
(11, 1007, 103, 1, 3000),

(12, 1008, 106, 1, 4000);
/* 2026-02-05 00:49:22 [6 ms] */ 
insert into payments(payment_id,order_id,payment_date,payment_method,amount,payment_status)values
(201,1001,'2024-04-05','credit card',6100,'success'),
(202,1002,'2024-04-07','upi',27500,'success'),
(203,1003,'2024-04-10','debit card',8000,'success'),
(204, 1004, '2024-04-15', 'UPI', 11000, 'Success'),
(205, 1005, '2024-04-18', 'COD', 7000, 'Failed'),
(206, 1006, '2024-04-20', 'Net Banking', 22000, 'Success'),
(207, 1007, '2024-04-22', 'Credit Card', 28000, 'Success');
/* 2026-02-05 00:49:25 [5 ms] */ 
update payments 
set payment_date = '2025-01-22'
where payment_id = 207;
/* 2026-02-05 00:49:27 [3 ms] */ 
select * from customers LIMIT 100;
/* 2026-02-05 00:49:33 [9 ms] */ 
select * from orders LIMIT 100;
/* 2026-02-05 00:49:35 [9 ms] */ 
select product_name from products where category = 'electronics' LIMIT 100;
/* 2026-02-05 00:49:38 [11 ms] */ 
select c.customer_id,c.name,
count(distinct o.order_id) as total_orders,
sum(oi.quantity) as total_quantity,
sum(oi.quantity *  oi.price) as total_sales_amount 
from customers c 
left join orders o on c.customer_id = o.customer_id
left join order_items oi on o.order_id = oi.order_id
left join payments p on p.order_id = o.order_id 
where p.payment_status = 'success' 
group by c.customer_id ,c.name 
order by total_sales_amount desc LIMIT 100;
/* 2026-02-05 00:49:41 [6 ms] */ 
select month(payment_date),year(payment_date),sum(amount)
 from payments group by month(payment_date),year(payment_date) LIMIT 100;
/* 2026-02-05 00:49:43 [7 ms] */ 
select pr.product_name , sum(oi.quantity)
from products pr
left join order_items oi
on pr.product_id = oi.product_id
group by pr.product_name
order by sum(oi.quantity) desc LIMIT 100;
/* 2026-02-05 00:50:59 [4 ms] */ 
use store;
