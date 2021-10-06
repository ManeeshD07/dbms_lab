insert into student(name, rollno, age, math, sci, eng, social, sports)VALUES('carol', 7, 22, 78, 99, 45, 56, 88);
insert into student(name, rollno, age, math, sci, eng, social, sports)VALUES('wanda', 43, 21, 73, 59, 63, 65, 56);
insert into student(name, rollno, age, math, sci, eng, social, sports)VALUES('natasha', 52, 20, 83, 86, 89, 91, 99);
insert into student(name, rollno, age, math, sci, eng, social, sports)VALUES('gamora', 34, 19, 84, 93, 79, 94, 85);
insert into student(name, rollno, age, math, sci, eng, social, sports)VALUES('jean', 46, 21, 98, 97, 84, 87, 72);

alter table student
add gender varchar(1);

alter table student
add team varchar(1);

alter table student
add yjoin year;

alter table student
drop column age;

alter table student
add dob date;

update student
set gender = 'M', team = 'R', dob = '2001-01-09', yjoin = '2019'
where name = 'dwayne'; 

update student
set gender = 'M', team = 'W', dob = '2002-03-21', yjoin = '2019'
where name = 'john'; 

update student
set gender = 'M', team = 'A', dob = '1999-09-11', yjoin = '2018'
where name = 'dave'; 

update student
set gender = 'M', team = 'R', dob = '2001-04-28', yjoin = '2019'
where name = 'randy'; 

update student
set gender = 'M', team = 'G', dob = '1999-02-13', yjoin = '2019'
where name = 'kane'; 

update student
set gender = 'M', team = 'W', dob = '2000-11-01', yjoin = '2018'
where name = 'tom'; 

update student
set gender = 'F', team = 'W', dob = '2000-06-19', yjoin = '2019'
where name = 'carol'; 

update student
set gender = 'F', team = 'R', dob = '2001-08-10', yjoin = '2019'
where name = 'wanda'; 

update student
set gender = 'F', team = 'A', dob = '2001-06-19', yjoin = '2019'
where name = 'natasha'; 

update student
set gender = 'F', team = 'G', dob = '2001-06-19', yjoin = '2018'
where name = 'gamora'; 

update student
set gender = 'F', team = 'G', dob = '2000-08-12', yjoin = '2019'
where name = 'jean'; 

alter table student
modify column dob date after rollno;

alter table student
modify column yjoin integer after dob;

alter table student
modify column gender varchar(1) after yjoin;

alter table student
modify column team varchar(1) after gender;

insert into campus(name, cid, loc, cap, law, engg, buss) values("mdc", 106,"pun", 1700, 0, 1, 1);
insert into campus(name, cid, loc, cap, law, engg, buss) values("mdd", 109,"del", 1400, 1, 1, 0);
insert into campus(name, cid, loc, cap, law, engg, buss) values("mvc", 110,"vel", 1400, 0, 1, 1);
insert into campus(name, cid, loc, cap, law, engg, buss) values("mbd", 113,"bgl", 800, 0, 1, 1);


alter table campus
add column pincode integer;

update campus
set pincode = 500043
where cid = 101;

update campus
set pincode = 600012
where cid = 104;

update campus
set pincode = 400076
where cid = 107;

update campus
set pincode = 411021
where cid = 106;

update campus
set pincode = 110001
where cid = 109;

update campus
set pincode = 631001
where cid = 110;

update campus
set pincode = 560002
where cid = 113;

alter table campus
modify column pincode integer after loc;