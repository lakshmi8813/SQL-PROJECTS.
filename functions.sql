create database visnu;
use visnu;
create table functionss(full_name varchar(40),no_of_functions int,date_of_functions date);
INSERT INTO functionss(full_name, no_of_functions, date_of_functions) VALUES
('Ramesh', 2, '2023-01-15'),
('Suresh', 4, '2023-02-10'),
('Priya', 1, '2023-03-05'),
('Karthik', 3, '2023-04-20'),
('Anitha', 5, '2023-05-12'),
('Lakshmi', 2, '2023-06-18'),
('Rahul', 4, '2023-07-09'),
('Sneha', 1, '2023-08-25'),
('Vijay', 3, '2023-09-14'),
('Keerthi', 2, '2023-10-30');
alter table functionss add column namegifts varchar(50)after no_of_functions;
select *from functionss;
update functionss set namegifts =case full_name
when"ramesh"then "car"
when"suresh"then"bicke"
when"priya"then"flower"
when"karthik"then"apple"
when"Anitha"then"orange"
when"Lakshmi"then"graps"
when"Rahul"then"mango"
when"Sneha"then"wallnut"
when"vijay"then"potatoo"
when"Keerthi"then"onions"
else namegifts
end;
alter table functionss add column cost_of_gifts int;
update functionss set cost_of_gifts =case full_name
when"ramesh"then 200
when"suresh"then 300
when"priya"then 400
when"karthik"then 500
when"Anitha"then 300
when"Lakshmi"then 800
when"Rahul"then 250
when"Sneha"then 350
when"vijay"then 450
when"Keerthi"then 750
else cost_of_gifts
end;
select bin(no_of_functions)from functionss;
select ucase(full_name)from functionss;
select max(cost_of_gifts)from functionss;
select avg (cost_of_gifts)from functionss;
select max(cost_of_gifts)from functionss where cost_of_gifts < (select max(cost_of_gifts)from functionss);
select *from functionss where date_of_functions='2023-02-10';
select concat  (full_name,date_of_functions)from functionss;
select left(full_name,5)from functionss;
select substr(namegifts,3,1)from functionss;
select concat_ws( "*",full_name,no_of_functions,namegifts,date_of_functions,cost_of_gifts)from functionss;
select*from functionss;
select date_of_functions from functionss;
select current_date();
select current_time();
select current_date(),current_time();
select date_add(current_date(), interval 5 day);

