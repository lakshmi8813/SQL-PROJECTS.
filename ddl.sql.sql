create database TCS;
USE TCS;
create table thopstech(id int,name varchar(90),age int,marks int);
insert into thopstech (id,name,age,marks)values(1,"narayana",30,45),(2,"poorna",27,50),(3,"kiran",30,75),(4,"babu",37,86);
alter table thopstech add column salary int first;
desc thopstech;
alter table thopstech add column dob date after name;
alter table thopstech drop column age;
alter table thopstech modify column id bigint;
alter table thopstech rename column marks to percentage;
alter table thopstech add column phone_no bigint,drop column percentage;
alter table thopstech modify column name varchar(100),add column gender char;
select*from thopstech;
show databases;
show tables;
desc thopstech;
select*from thopstech;
select name,salary from thopstech;
rename table thopstech to THOPS;
alter table THOPS add column addresss varchar(50);
truncate table THOPS;
drop table THOPS;
drop database tcs;




