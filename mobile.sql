create database mobile;
use mobile;
create table customer_info(customer_id varchar(50) primary key,cust_name varchar(30),address varchar(40),mobile bigint,email varchar(50));
create table distrbutor (distbuter_id varchar(50) primary key,distibutername varchar(67),address varchar(87),mobile bigint);
select*from  customer_info;
desc customer_info;
create table  mobile_specifications(ime_no varchar(65),weight int,
disply_type varchar(65),memory_type varchar(65),os varchar(56),camera varchar(54));
alter table mobile_specifications add  constraint
primary key(ime_no);
create table mobile_master (ime_no varchar(65),model_name varchar(55),warranty varchar(74),price int);
alter table mobile_master add constraint
primary key(ime_no);
 create table sales_info(salesid int primary key,sales_date date,ime_no varchar(56),price int,customer_id varchar(56));
 alter table sales_info add constraint
 foreign key(customer_id) references customer_info(customer_id);
 alter table sales_info add constraint
 foreign key(ime_no) references mobile_master(ime_no);
 alter table mobile_master add constraint
 foreign key(model_name) references distrbutor (distbuter_id);
 alter table mobile_master add constraint
 foreign key(ime_no)references mobile_specifications(ime_no);
