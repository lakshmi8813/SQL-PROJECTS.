create database pub;
use pub;
create table bar (no_of_bottle int, brand_name varchar(30),cost int);
insert into bar values (3,"qurter",400),(2,"jai balaiah",300),(4,"vodka",500),(5,"brandhi",600),(6,"berr",300);
select*from bar;
insert into bar(no_of_bottle, brand_name ,cost )values(9,"bakadi",500),(8,"old monk",400),(4,"mecdonals",250),(3,"rani",350),(7,"navathi",375),(2,"gova",482),(9,"tekila",5444),(6,"gangu",644),(4,"jack",455),(4,"oc",70);
insert into  bar (brand_name)values("poorna"),("kiran");
alter table bar add column(stuff varchar(40));
update bar set stuff=case no_of_bottle
when 3 then "chicken"
when 2 then "chekodi"
when 4 then "chips"
when 5 then "pickel"
when 6 then "bingo"
when 9 then "rajma"
when 8 then "sweet"
when 7 then "biryani"
else stuff
end;
alter table bar
rename column brand_name to botel_name;
update  bar set no_of_bottle=4 where botel_name="poorna";
update bar set cost=case botel_name
when "poorna" then 700
when "kiran" then 666
else cost
end;
update bar set no_of_bottle=3 where botel_name="kiran";
update bar set stuff=case botel_name
when "poorna" then "fish"
when"kiran" then "tost"
else stuff
end;
update bar set cost=case stuff
when "chicken"then 222
else cost
end;
update bar set cost=case botel_name
when"qurter"then 530
else cost
end;
update bar set botel_name=case cost
when 222 then "bahu"
else botel_name
end,
no_of_bottle=case cost
when 222 then 10
else no_of_bottle
end;
update  bar set cost=case cost
when 530 then 420
when 300 then 350
when 500 then 540
when 600 then 650
when 300 then 430
when 500 then 355
when  400 then 240
when 250 then 111
when 222 then 555
else cost
end;






