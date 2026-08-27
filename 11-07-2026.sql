create database aa;
use aa;
create table k1 (id1 int ,name varchar(50),pin_code int,city varchar(50));
create table k2(id2 int ,name varchar(50), age int,pin_code int);
alter table k1 add primary key(id1);
desc k1;
alter table k2 add constraint
foreign key( pin_code)references k1(id1);
create table k3 (id3 int ,name varchar(5),pin_code int);
alter table k3 add constraint
foreign key(pin_code)references k1(id1);
alter table k1 drop primary key;
desc k1;
show create table k2;
alter table k2 drop constraint k2_ibfk_1;
show index from k2;
alter table k2 drop index pin_code;
show create table k3;
alter table k3 drop constraint k3_ibfk_1;
show index in k3;
alter table k3 drop index pin_code;
create table k4 (id4 int,name varchar(50), pin4 int ,pin5 int);
alter table k4 add constraint
foreign key(pin4)references k1(id1); 
alter table k4 add constraint
foreign key(pin5)references k1(id1); 
show create table k4;
alter table k4 drop constraint k4_ibfk_1;
show index in k4;
alter table k4 drop  index pin4;
show create table k4;
alter table k4 drop constraint k4_ibfk_2;
show index in k4;
alter table k4 drop  index pin5;
desc k4;
desc k2;
desc k3;


