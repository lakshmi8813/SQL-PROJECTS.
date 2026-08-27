create  database view;
use view;
create table box(id int,name varchar(54),location varchar(54),phon_no bigint);
INSERT INTO box (id, name, location, phon_no)
VALUES
(1, 'Ramesh', 'Bengaluru', 9876543210),
(2, 'Suresh', 'Hyderabad', 9123456780),
(3, 'Mahesh', 'Chennai', 9988776655),
(4, 'Anitha', 'Vijayawada', 9012345678),
(5, 'Kavya', 'Mysuru', 9871234567),
(6, 'Rahul', 'Mumbai', 9765432109),
(7, 'Priya', 'Delhi', 9345678901),
(8, 'Kiran', 'Pune', 9234567890),
(9, 'Deepak', 'Kolkata', 9567890123),
(10, 'Sneha', 'Coimbatore', 9456789012);
create view nani as(select*from box where id=8);
select*from nani;
create view dani as (select*from box where location="bengaluru");
select*from dani;
insert into nani  (id, name, location, phon_no)
VALUES
(11, 'Arjun', 'Nellore', 9387654321),
(12, 'Divya', 'Visakhapatnam', 9498765432);
select*from box;
create view raja as (select*from box);
INSERT INTO raja (id, name, location, phon_no)
VALUES
(13, 'Vamsi', 'Tirupati', 9876501234),
(14, 'Keerthi', 'Guntur', 9123405678);
select*from raja;
create view n1 as (select* from nani);
select* from nani;
insert into nani values
(11, 'junu', 'tirupathi', 9874564321),
(12, 'Divya', 'patnam', 9498764552);
create  table uma (id int,name varchar(54),location varchar(54),phon_no bigint);
alter table uma rename column id to id1;
alter table uma rename column name  to name_1 ;
alter table uma rename column  location to location1;
alter table uma rename column phon_no to phone_no1;
INSERT INTO uma (id, name, location, phon_no)
VALUES
(15, 'Naveen', 'Warangal', 9876541201),
(16, 'Swathi', 'Rajahmundry', 9876541202),
(17, 'Ajay', 'Kurnool', 9876541203),
(18, 'Bhavya', 'Kadapa', 9876541204),
(19, 'Charan', 'Anantapur', 9876541205),
(20, 'Lakshmi', 'Ongole', 9876541206),
(21, 'Harish', 'Eluru', 9876541207),
(22, 'Pooja', 'Nizamabad', 9876541208),
(23, 'Manoj', 'Karimnagar', 9876541209),
(24, 'Sindhu', 'Kakinada', 9876541210);
create view v1 as (select*from uma);
select*from v1;
create view v2 as (select* from box left join uma on box.id=uma.id1);
select*from v2;
create  view v3 as (select*from uma right join box on uma.id1=box.id);
select*from v3;
insert into  v3 
VALUES
(25, 'Teja', 'Chittoor', 9876541211,26, 'Sowmya', 'Khammam', 9876541212),
(26, 'Sowmya', 'Khammam', 9876541212,25, 'Teja', 'Chittoor', 987654121);


