create database uma;
use uma;
create table car(type varchar(50) primary key);
create table customer(name int primary key,address varchar(50));
create table Location(city varchar(50) primary key);
create table Reserve (city varchar(50),vehicle_type varchar(50),pickup_date date ,return_date date,phone_number bigint,customer_id int,
foreign key(city)references Location (city));
alter table Reserve add constraint
foreign key(vehicle_type)references car(type);
alter table Reserve add constraint
foreign key(customer_id)references customer(name);
create table retern(return_date date,time time,odometer int,full_tank int,city varchar(50),phone_number bigint,customer_id  int,
foreign key(city)  references Location(city));
alter table retern add constraint 
foreign key(customer_id)references customer(name);

