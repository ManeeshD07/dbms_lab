/*---------1---------*/
alter table student
add column math integer;

alter table student
add column sci integer;

alter table student
add column eng integer;

alter table student
add column social integer;

alter table student
add column sports integer;

update student
inner join marks_sem1 on student.rollno = marks_sem1.rollno
set student.math = marks_sem1.math;

update student
inner join marks_sem1 on student.rollno = marks_sem1.rollno
set student.sci = marks_sem1.sci;


update student
inner join marks_sem1 on student.rollno = marks_sem1.rollno
set student.eng = marks_sem1.eng;


update student
inner join marks_sem1 on student.rollno = marks_sem1.rollno
set student.social = marks_sem1.social;

update student
inner join marks_sem1 on student.rollno = marks_sem1.rollno
set student.sports = marks_sem1.sports;

/*------------------------------2-------------------------*/
select student.name, marks_sem1.sports from student 
inner join marks_sem1 on student.rollno = marks_sem1.rollno;

/*-----------------------------3-------------------------------*/
select student.name, student.math, student.rollno from student   
inner join campus  on student.cid = campus.cid; 

/*----------------------------4---------------------*/
select * from campus
left join student on campus.cid = student.cid;

select * from campus
right join student on campus.cid = student.cid;