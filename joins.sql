create database foodcourt;
use foodcourt;
create table food(item_no  int primary key, item_name varchar(78), amount int,date_of_manufacture date);
INSERT INTO food (item_no, item_name, amount, date_of_manufacture)
VALUES
(1, 'Laptop', 55000, '2025-01-15'),
(2, 'Mobile', 25000, '2025-02-20'),
(3, 'Keyboard', 1200, '2025-03-05'),
(4, 'Mouse', 800, '2025-01-25'),
(5, 'Monitor', 15000, '2025-04-10'),
(6, 'Printer', 9000, '2025-02-28'),
(7, 'Speaker', 3000, '2025-05-12'),
(8, 'Headphones', 2000, '2025-06-18'),
(9, 'Web Camera', 3500, '2025-03-22'),
(10, 'USB Drive', 700, '2025-07-01');
create table drinks(bottle_no int primary key ,brand_name varchar(45),cost int, munching_item  varchar(45), item_no int,foreign key
(item_no) references food(item_no));
select*from food inner join drinks on food.item_no =drinks.item_no;
INSERT INTO drinks (bottle_no, brand_name, cost, munching_item, item_no)
VALUES
(101, 'Coca Cola', 40, 'Chips', 1),
(102, 'Pepsi', 35, 'French Fries', 2),
(103, 'Sprite', 40, 'Chicken 65', 3),
(104, 'Fanta', 35, 'Burger', 4),
(105, 'Thums Up', 45, 'Pizza', 5),
(106, 'Maaza', 30, 'Samosa', 6),
(107, 'Slice', 30, 'Sandwich', 7),
(108, '7 Up', 35, 'Popcorn', 8),
(109, 'Mountain Dew', 45, 'Puffs', 9),
(110, 'Limca', 35, 'Biscuits', 10);
select*from food left join drinks on food.item_no =drinks.item_no;
select*from food right join drinks on food.item_no =drinks.item_no;
SELECT
    food.item_no,
    food.item_name,
    food.amount,
    drinks.bottle_no,
    drinks.brand_name,
    drinks.cost,
    drinks.munching_item
FROM food
LEFT JOIN drinks
ON food.item_no = drinks.item_no;
SELECT
    food.item_no,
    food.item_name,
    food.amount,
    drinks.bottle_no,
    drinks.brand_name,
    drinks.cost,
    drinks.munching_item
FROM food
right JOIN drinks
ON food.item_no = drinks.item_no;
select*from food right join drinks on food.item_no =drinks.item_no
union
select*from food left join drinks on food.item_no =drinks.item_no;
SELECT f.amount, d.cost
FROM food f
INNER JOIN drinks d
ON f.item_no = d.item_no
WHERE d.cost <100;
SELECT f.item_name, d.bottle_no
FROM food f
INNER JOIN drinks d
ON f.item_no = d.item_no;
select*from food cross join drinks on food.item_no =drinks.item_no;
create table employee(emp_id int , name varchar(54), m_id int);
create database joins;
use joins;
create table parents(p_id int primary key , p_name varchar(50),p_age int);
INSERT INTO parents (p_id, p_name, p_age) VALUES
(1, 'Ramesh', 45),
(2, 'Suresh', 48),
(3, 'Lakshmi', 42),
(4, 'Anitha', 40),
(5, 'Mahesh', 50),
(6, 'Kavitha', 44),
(7, 'Ravi', 47),
(8, 'Swathi', 39),
(9, 'Prasad', 52),
(10, 'Sunitha', 46);
create table child (c_id int primary key , c_name varchar(45),c_age int, p_id int ,foreign key(p_id)references parents(p_id));
INSERT INTO child (c_id, c_name, c_age, p_id) VALUES
(1, 'Rahul', 5, 101),
(2, 'Priya', 8, 102),
(3, 'Kiran', 6, 103),
(4, 'Sneha', 10, 104),
(5, 'Arjun', 7, 105),
(6, 'Anjali', 9, 106),
(7, 'Rohit', 4, 107),
(8, 'Divya', 11, 108),
(9, 'Vikram', 12, 109),
(10, 'Pooja', 5, 110),
(11, 'Suresh', 8, 101),
(12, 'Keerthi', 7, 102),
(13, 'Nikhil', 9, 103),
(14, 'Meena', 6, 104),
(15, 'Harsha', 10, 105);
 show create table child;
alter table child drop constraint child_ibfk_2;
show index from child;
alter table child drop index cid;


select * from child;


insert into child values((11,"ramu",5,101),(12,"ravi",1,102),(13,"mahi",5,103),(14,"vani",5,104),(15,"kumar",3,105),(16,"mani",9,106));

select * from parents p left join  child c on p.pid=c.cid
union
select * from parents p right join child c on p.pid=c.cid;

select * from parents p right join child c on p.pid=c.cid;

select * from parents cross join child;

create table employe (eid int primary key,
name varchar(20),
mid int);

select * from employe;

insert into employe values(1,"ramu",7),(2,"mani",6),(3,"kamal",5),(4,"veera",4),(5,"uma",3),(6,"kiran",2),(7,"purna"1);


select name,mid from employe;





