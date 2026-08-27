create database pizza;
use pizza;
create table customer(customerid int primary key,fname varchar(43),lname varchar(45));
create table delivery(deliveryid int primary key,orderid int ,type varchar(45));
create table orderheader(orderid int primary  key,orderdate date,ordertime time,customerid int,foreign key(customerid)references customer(customerid));
alter table orderheader add constraint
foreign key(orderid)references delivery(deliveryid);
create table orderLine(orderid int,lineid int,pizzaid int,qulity varchar(54),foreign key(orderid)references orderheader(orderid));