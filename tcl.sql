create database park;
use park;
create table l_park(no_of_persons int,names_of_persons varchar(50),date_of_meet date,no_of_polices int);
start transaction;
savepoint kali;
insert into l_park (no_of_persons,names_of_persons,date_of_meet,no_of_polices)values(1,"karthik",'2026-1-12',6);
insert into l_park (no_of_persons,names_of_persons,date_of_meet,no_of_polices)values(2,"naga",'2026-1-13',7);
insert into l_park (no_of_persons,names_of_persons,date_of_meet,no_of_polices)values(3,"raka",'2026-1-14',8);
insert into l_park (no_of_persons,names_of_persons,date_of_meet,no_of_polices)values(4,"kanth",'2026-1-15',9);
insert into l_park (no_of_persons,names_of_persons,date_of_meet,no_of_polices)values(1,"hymavathi",'2026-1-16',10);
update l_park set date_of_meet=case names_of_persons
when "karthik" then '2023-03-06'
when "hymavathi" then '2023-03-06'
else date_of_meet
end;
select *from l_park;
rollback;
savepoint jail;
insert into l_park (no_of_persons,names_of_persons,date_of_meet,no_of_polices)values(6,"naresh",'2026-7-19',9);
insert into l_park (no_of_persons,names_of_persons,date_of_meet,no_of_polices)values(8,"banu",'2026-8-19',2);
insert into l_park (no_of_persons,names_of_persons,date_of_meet,no_of_polices)values(4,"pavan",'2026-9-12',4);
commit;
rollback;
desc l_park;