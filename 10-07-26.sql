create database don;
use don;
create table corn (id int,name varchar(50),salary int,email varchar(20));
alter table corn add column name_adhar varchar(50);
alter table corn modify column id int primary key;
INSERT INTO corn (id, name, salary, email, name_adhar) VALUES
(1, 'Ravi Kumar', 35000, 'ravi@example.com', 'ADH123456'),
(2, 'Sneha Reddy', 42000, 'sneha@example.com', 'ADH654321'),
(3, 'Arjun Mehta', 50000, 'arjun@example.com', 'ADH987654'),
(4, 'Priya Sharma', 28000, 'priya@example.com', 'ADH112233'),
(5, 'Vikram Singh', 60000, 'vikram@example.com', 'ADH445566'),
(6, 'Meena Joshi', 32000, 'meena@example.com', 'ADH778899'),
(7, 'Karan Patel', 47000, 'karan@example.com', 'ADH990011'),
(8, 'Anita Rao', 39000, 'anita@example.com', 'ADH223344'),
(9, 'Suresh Das', 55000, 'suresh@example.com', 'ADH556677'),
(10, 'Lakshmi Nair', 31000, 'lakshmi@example.com', 'ADH889900');
select*from corn;
alter table corn add column age int check (age>25);
update corn set age = case id
when 1 then 26
when 2 then 27
when 3 then 28
when 4 then 29
when 5 then 30
when 6 then 31
when 7 then 32
when 8 then 33
when 9 then 34
when 10 then 35
else age 
end;
show create table corn;
create table food (no_of_plates int not null , name_of_food varchar(50) primary key, cost_of_food int);
select *from food;
INSERT INTO food (no_of_plates, name_of_food, cost_of_food)
VALUES
(2, 'Chicken Biryani', 250),
(1, 'Veg Fried Rice', 180),
(3, 'Mutton Biryani', 320),
(2, 'Paneer Butter Masala', 220),
(4, 'Butter Naan', 40),
(1, 'Masala Dosa', 90),
(2, 'Idli', 50),
(5, 'Chicken 65', 240),
(3, 'Veg Noodles', 170),
(2, 'Fish Curry', 280);
alter table corn add column name_of_drinks varchar(50)default "sprit";
alter table corn drop primary key;
create table cooldrinkas(no_of_cool_drinks int primary key, name_of_drinks varchar(54) ,no_of_glasses int );
