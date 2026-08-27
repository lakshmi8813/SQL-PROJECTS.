create database StudentsandTeachers;
use StudentsandTeachers;
create table Groupes(group_id int primary key,name varchar(43));
create table Subjects(sub_id int primary key,title varchar(50));
create table Teacher (teacher_id int primary key,firstname varchar(50),lastname varchar(50));
create  table Student(student_id int  primary key,firstname varchar(50),lastname varchar(60));
alter table Student add column group_id int;
alter table Student add constraint
foreign key(group_id)references Groupes (group_id);
create table Sub_teach(st_id int primary key,subject_id int,teacher_id int,group_id int,
foreign key(subject_id)references Subjects(sub_id));
alter table  Sub_teach add constraint
foreign key(teacher_id)references Teacher(teacher_id);
alter table Sub_teach add constraint
foreign key(group_id)references Groupes(group_id);
create table Marks(mark_id int primary key,student_id int ,subject_id int ,date date,mark int,
foreign key(student_id)references Student(student_id));
alter table Marks add constraint
foreign key(subject_id)references Subjects(sub_id);

