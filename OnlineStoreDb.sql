create database bookstore;
use bookstore;
create table customer(
name varchar(20),
email varchar(30) primary key,
address varchar(30),
phone int
);
create table publisher(
publisherId int,
publisherName varchar(20),
address varchar(30),
phone int,
URL varchar(30),
primary key(publisherID)
);
create table author(
authorId int primary key,
URL varchar(30) unique,
authorName varchar(20),
address varchar(30) unique
);
create table warehouse(
WarehouseCode varchar(10) primary key,
address varchar(50),
phone integer
);
create table Product(
productId int primary key,
productType varchar(10),
title varchar(20),
authorId int,
publisherId int,
PublishedYear year,
price int,
warehouseCode varchar(10),
foreign key(publisherId) references publisher(publisherId) ,
foreign key(authorId) references author(authorId),
foreign key(warehouseCode) references warehouse(warehouseCode)
);
create table book(
isbn varchar(10) primary key,
productId int,
foreign key(productId) references Product(productId)
);
create table musicplayer(
SerialNumber varchar(10) primary key,
ProductId int,
device varchar(20),
foreign key(ProductId) references Product(ProductId)
);
create table shoppingbasket(
basketId varchar(10) primary key,
email varchar(50),
shoppingdate date,
foreign key(email) references customer(email)
);
create table productspurchased(
basketId varchar(10),
productId int,
foreign key(ProductId) references Product(ProductId),
foreign key(basketId) references shoppingbasket(basketId)
);