create database bank;
use bank;
create table  bank_info(ifsccode int primary key,bank_name varchar(50),branch_name varchar(50));
create table cutomer_personal_info(customer_id int primary key,customer_name varchar(50),date_of_birth date,gurdion_name varchar(50),address varchar(50),contack_number bigint
,mail_id varchar(50),gender varchar(50),material_status varchar(50),identification_doc_type varchar(50),id_doc_no varchar(20),citizen_ship varchar(50));
create table customer_ref_info(customer_id int primary key,reference_acc_name varchar(15),reference_acc_no bigint,reference_address varchar(34),relation varchar(67));
create table account_info(account_number bigint ,customer_id int,account_type varchar(50),registration_date date,action_date date,ifsc_code int,intest decimal(7,2),intial_deposite bigint,
foreign key (ifsc_code) references bank_info(ifsccode));
alter table account_info add constraint
foreign key(customer_id)references customer_ref_info(customer_id);
alter table account_info add constraint
foreign key(customer_id)references cutomer_personal_info (customer_id);