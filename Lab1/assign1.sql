create database university_profile;
use university_profile;
create table student(name varchar(15), rollno integer, age integer, math integer, sci integer, eng integer, social integer, sports integer);
insert into student(name, rollno, age, math, sci, eng, social, sports) values("dwayne", 33, 21, 98, 94, 91, 96, 55);
insert into student(name, rollno, age, math, sci, eng, social, sports) values("john", 58, 18, 70, 95, 61, 46, 85);
insert into student(name, rollno, age, math, sci, eng, social, sports) values("dave", 27, 22, 54, 68, 98, 96, 77);
insert into student(name, rollno, age, math, sci, eng, social, sports) values("randy", 56, 19, 67, 90, 91, 86, 65);
insert into student(name, rollno, age, math, sci, eng, social, sports) values("kane", 11, 20, 69, 96, 91, 56, 75);
insert into student(name, rollno, age, math, sci, eng, social, sports) values("tom", 50, 21, 68, 74, 84, 76, 65);

create table campus(name varchar(10),cid integer, loc varchar(11), cap integer, law integer, engg integer, buss integer);
insert into campus(name, cid, loc, cap, law, engg, buss) values("mec", 101,"hyd", 1000, 1, 1, 1);
insert into campus(name, cid, loc, cap, law, engg, buss) values("muc", 104,"mad", 2000, 0, 1, 1);
insert into campus(name, cid, loc, cap, law, engg, buss) values("mec", 107,"bom", 1500, 1, 0, 1);


/*1*/select cid from campus where law=1;
/*2*/select name, rollno, age, math, sci, sports from student where name="dave";
/*3*/select name,rollno from student where math>80 or sci>80;
/*4*/select distinct social from student;
/*5*/select count(eng) from student where eng<70;
/*6*/select name, greatest(sci, math) from student;
/*7*/select loc from campus where engg=0;

/*9*/select name from student where math>70 and sci>70 and eng>70 and social>70 and sports>70;
/*----------------10----------------*/
select count(*) from student where rollno>=0 and rollno<20;
select count(*) from student where rollno>=20 and rollno<40;
select count(*) from student where rollno>=40 and rollno<60;
select count(*) from student where rollno>=60 and rollno<80;