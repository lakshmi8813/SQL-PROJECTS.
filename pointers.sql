use park;
create table movies(movie_no int,moviename varchar(50),date_of_relase date);
INSERT INTO movies (movie_no, moviename, date_of_relase) VALUES
(1, 'RRR', '2022-03-25'),
(2, 'Pushpa', '2021-12-17'),
(3, 'Baahubali', '2015-07-10'),
(4, 'Salaar', '2023-12-22'),
(5, 'Kalki 2898 AD', '2024-06-27'),
(6, 'Hi Nanna', '2023-12-07'),
(7, 'Jailer', '2023-08-10'),
(8, 'Leo', '2023-10-19'),
(9, 'KGF Chapter 2', '2022-04-14'),
(10, 'Devara', '2024-09-27');
alter table movies add column amount_of_ticket int;
select*from movies;
update movies set amount_of_ticket=case movie_no
when 1 then 100
when 2 then 200
when 3 then 300
when 4 then 400
when 5 then 500
when 6 then 600
when 7 then 700
when 8 then 800
when 9 then 900
when 10 then 1000
else amount_of_ticket
end;
select*from movies where movie_no=4;
select* from movies where amount_of_ticket between 200 and 400;
select moviename,movie_no from movies where amount_of_ticket=500;
delete from movies where moviename="Baahubali";
select * from movies 
where moviename in ("RRR","Pushpa","Salaar","Kalki 2898 AD");
select * from movies where movie_no=4;
select amount_of_ticket ,moviename from movies where movie_no=2;
select* from movies where moviename like "k%";
select *from movies where moviename like "%i";
select * from movies where moviename like "p% "and "%a";
alter table movies add column hero_name varchar(30);
update movies set hero_name=case movie_no
when 1 then "nani"
when 2 then "raja"
when 4 then "mani"
when 5 then "jani"
when 6 then "hani"
when 7 then "gani"
when 8 then "dani"
when 9 then "good"
when 10 then "bani"
else hero_name
end;

