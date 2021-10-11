create table marks_sem1 as select * from student;

alter table marks_sem1 
drop column name;

alter table marks_sem1
drop column yjoin;

alter table marks_sem1
drop column gender; 

alter table marks_sem1
drop column dob;

alter table marks_sem1
drop column team;

alter table marks_sem1
add primary key(rollno);

show columns from marks_sem1;

create table faculty(name varchar(20), fid char(4), subject varchar(20));
insert into faculty(name, fid, subject) values('kakashi', 4003, 'math'); 
insert into faculty(name, fid, subject) values('guy', 5002, 'sports'); 
insert into faculty(name, fid, subject) values('kurenai', 5038, 'eng');

alter table faculty
add primary key(fid);

show columns from faculty;