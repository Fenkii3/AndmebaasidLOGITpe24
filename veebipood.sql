create database veebipood;
use veebipood;

--Tabel Brands
CREATE TABLE Brands(
brand_id int Primary Key identity(1,1),
brand_name varchar(25) UNIQUE)

INSERT INTO Brands
VALUES ('Nike'),('Adidas')
SELECT * FROM Brands;

--Tabel Categories
CREATE TABLE Categories(
category_id int Primary Key identity(1,1),
category_name varchar(25) UNIQUE)

INSERT INTO Categories
VALUES ('Tossud'),('Särgid'),('Ülariided')
SELECT * FROM Categories

--Tabel Products
CREATE TABLE products(
product_id int Primary Key identity(1,1),
product_name varchar(25) UNIQUE,
brand_id int,
Foreign Key (brand_id) References brands(brand_id),
category_id int,
Foreign Key (category_id) References categories(category_id),
model_year int,
list_price money)

INSERT INTO products
VALUES ('Jooksu Püksid',2,1,2021,10.99)
SELECT * FROM Brands
SELECT * FROM Categories
SELECT * FROM products


--Tabel Customers
CREATE TABLE Customers(
customer_id int Primary Key identity(1,1),
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
phone char(13),
email varchar(25) NOT NULL,
street varchar(25),
city varchar(25),
state varchar(25),
zip_code char(5))

SELECT * FROM Customers

INSERT INTO Customers
VALUES ('Priit', 'Mets', '573498', 'priit.mets@gmail.com', 'Linnu Tee 17', 'Tallinn','Eesti', '74297')

--Tabel Stores
CREATE TABLE Stores(
store_id int primary key identity(1,1),
store_name varchar(25) UNIQUE NOT NULL,
phone char(13),
email varchar(25) NOT NULL,
street varchar(25),
city varchar(25),
state varchar(25),
zip_code char(5))

SELECT * FROM Stores

INSERT INTO Stores
VALUES ('Sportland', '5890387', 'sportland@gmail.com', 'Järveotsa 87', 'Tallinn', 'Eesti', '75643')

--TABEL STAFF
CREATE TABLE Staff(
staff_id int primary key identity(1,1),
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
email varchar(25) NOT NULL,
phone char(13),
Active bit,
store_id int,
Foreign Key (store_id) References Stores(store_id),
manager_id bit)

SELECT * FROM Staff

INSERT INTO Staff
VALUES ('Riho', 'Toomingas', 'riho.toomingas@gmail.com', 52142942,1,2, 0)

--Tabel Stocks
CREATE TABLE stocks(
store_id int,
product_id int,
primary key (store_id, product_id),
foreign key (store_id) references products(product_id),
quantity int)

select * from stocks
select * from products

INSERT INTO stocks
VALUES (1, 1, 100), (1, 2, 30)

create table orders(
order_id int primary key identity(1,1),
customer_id int,
Foreign Key (customer_id) references customers(customer_id),
order_status varchar(10) check(order_status = 'tehtud' or order_status = 'tegemata'),
order_date date,
required_date date,
shipped_date date,
store_id int, 
Foreign Key(store_id) References stores(store_id),
staff_id int, 
Foreign Key(staff_id) References staff(staff_id))

select * from orders
select * from stores
select * from staff
select * from customers

insert into orders
values (1, 'tehtud', '2026-04-21', '2026-05-10', '2026-05-01',2, 1)

--tabel order_items
create table order_items(
order_id int,
Foreign Key(order_id) references orders(order_id),
item_id int,
product_id int,
Foreign Key(product_id) references products(product_id),
primary key(order_id, item_id),
quantity int,
list_price money,
discount int)

select * from order_items
select * from products
select * from orders

insert into order_items
values (6, 1, 2, 100, 55, 20)
