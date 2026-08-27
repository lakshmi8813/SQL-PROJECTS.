create database job;
use job;
create table job(id int primary key,code varchar(54),name varchar(34));
rename table job to step;
select *from step;
create table process_step(id int primary key,step_id int ,process_id int ,status varchar(65),
foreign key(step_id)references step (id));
create table process(id int primary key,code varchar(56),description varchar(34),requred_id int);
alter table process_step add constraint
foreign key(id)references process(id);
create table job_category(id int primary key,code varchar(54),name varchar(40),descrtion varchar(55));
create table job_platform(id int primary key,code varchar(45),name varchar(40),dese varchar(40));
create table organization (id int primary key,code varchar(54),name varchar(40),descrtion varchar(55));
create table job(id int primary key,code varchar(54),position_name varchar(40),descrtion varchar(55));
rename table job to job_position;
create table job (id int primary key,code varchar(54),name varchar(40),descrtion varchar(55),date_publish date,job_start date,no_of_vacancies int,job_category int,position_id int,
job_platform_id int,org_id int,process_id int,foreign key(job_category)references job_category(id));
alter table job add constraint
foreign key( position_id)references job_position(id);
alter table job add constraint
foreign key(job_platform_id )references job_platform(id);
alter table job add constraint
foreign key( process_id)references process(id);
alter table job add constraint
foreign key(org_id)references organization (id);
alter table job add constraint
foreign key(no_of_vacancies)references process(id);


