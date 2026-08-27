create database narayana;
use narayana;
create table student(id int, name varchar(50),branch varchar(56),marks int);
create table employe(id int, name varchar(50),duty varchar(56),marks int);
alter table student rename column id to s_id;
rename table student to collage;
alter table collage drop column marks;
truncate table collage;
drop table collage;
create table raja (id int unique,name varchar(40),email varchar(34));
alter table raja add column phone_no bigint not null;
alter table raja modify column email varchar(70) unique;
alter table raja add column achivement varchar(50) default "askar";
select *from raja;
insert into raja values(1,"balli","balli@gmail.com",6301870542," ");
create table dady(id int ,name varchar(56),dept varchar(46),salary int);
insert into dady  values (1,"bacha","selll",5600);
insert into dady  values (1,"bacha","selll",560),(2,"rah","retell",760),(3,"babi","hr",860),(4,"chachu","accounts",360),(5,"hani","ceo",999),(6,"","",5600),(7,"","",4600),(8,"","",59600);
select*from dady;
update dady set name = case id
when 6 then"gani"
when 7 then "rani"
when 8 then"sathi"
else dept
end;
