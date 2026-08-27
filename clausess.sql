use d1;
CREATE TABLE t1 (
    movie_name VARCHAR(50),
    hero_name VARCHAR(50),
    heroine_name VARCHAR(50),
    no_of_songs INT
);
INSERT INTO t1 VALUES
('RRR', 'NTR', 'Alia Bhatt', 7),
('Pushpa', 'Allu Arjun', 'Rashmika Mandanna', 5),
('Baahubali', 'Prabhas', 'Anushka Shetty', 8),
('Salaar', 'Prabhas', 'Shruti Haasan', 4),
('Ala Vaikunthapurramuloo', 'Allu Arjun', 'Pooja Hegde', 6),
('Arjun Reddy', 'Vijay Deverakonda', 'Shalini Pandey', 5),
('Hi Nanna', 'Nani', 'Mrunal Thakur', 6),
('Jersey', 'Nani', 'Shraddha Srinath', 5),
('Sye', 'Nithiin', 'Genelia D Souza', 6),
('Pokiri', 'Mahesh Babu', 'Ileana D Cruz', 6);
select *from t1;
update t1 set movie_name="Arya"where no_of_songs=4;
delete from  t1 where hero_name="prabhas";
update t1 set heroine_name=case movie_name
when "rrr"then "kanthama"
when"Pushpa"then "avva"
when"AlaVaikunthapurramuloo"then "rama"
when "Arjun Reddy"then " banu"
when "Hi Nanna"then "kaki"
when "Jersey"then "gana"
when "Sye" then "smith"
when"Pokiri" then "upma"
else heroine_name
end;
alter table t1 add columnno_of_steps_in_dance  int;
select *from t1;
update t1 set columnno_of_steps_in_dance=case heroine_name
when"kanthama"then 7
when"avva"then 3
when "Pooja Hegde"then 2
when "banu"then 5
when "kaki" then 3
when "gana" then 2
when "smith" then 4
when "upma"then 5
else columnno_of_steps_in_dance
end;
alter table t1 drop column movie_name;
select*from t1 where no_of_songs between 1 and 6;
select*from t1 order by heroine_name asc;
SELECT hero_name,
       SUM(no_of_songs)
FROM movie
GROUP BY hero_name;
SELECT COUNT(hero_name)
FROM movie
WHERE no_of_songs = 4;
select*from t1 limit 3;
select*from t1 limit 12;
select*from t1 limit 4,1;
select *from t1 limit 5,1;

ALTER TABLE t1
ADD amount_of_ticket INT;
select *from t1;
update t1 set amount_of_ticket=case hero_name
when"Allu Arjun"then 300
when "Vijay Deverakonda"then 200
when "Nani"then 500
when "NIthin" then 300
when "Mahesh Babu" then 200
else amout_of_ticket
end;
update t1 set amount_of_ticket=100 where hero_name="NTR";