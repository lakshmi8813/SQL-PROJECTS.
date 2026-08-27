use d1;
create table raja(movie_id int ,movie_name varchar(56),hero_name varchar(45),heroine_name varchar(65));
insert into raja values
(1, 'Pushpa 2', 'Allu Arjun', 'Rashmika Mandanna' ),
(2, 'Salaar', 'Prabhas', 'Shruti Haasan'),
(3, 'RRR', 'NTR', 'Alia Bhatt'),
(4, 'Baahubali 2', 'Prabhas', 'Anushka Shetty'),
(5, 'KGF Chapter 2', 'Yash', 'Srinidhi Shetty'),
(6, 'Kalki 2898 AD', 'Prabhas', 'Deepika Padukone'),
(7, 'Devara', 'NTR', 'Janhvi Kapoor'),
(8, 'Hanuman', 'Teja Sajja', 'Amritha Aiyer');
select *from raja;
select movie_name,hero_name from raja;
alter table raja add column relese_year date;
update raja set relese_year=case movie_id
when 1 then '2023'
when 2 then '2019'
when 3 then '2018'
when 4 then '2021'
when 5 then '2024'
when 6 then '2017'
when 7 then '2016'
when 8 then '2022'
else relese_year
end;
alter table raja modify column relese_year int;
select *from raja where  relese_year  > 2020;
alter table raja add column d_name varchar(45);
update raja set d_name=case movie_id
when 1 then 'raja'
when 2 then 'kaja'
when 3 then 'names'
when 4 then 'kaki'
when 5 then 'chanu'
when 6 then 'sujit'
when 7 then 'pooorr'
when 8 then 'babi'
else d_name
end;

