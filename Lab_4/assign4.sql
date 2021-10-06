/*-----------------1----------------*/
select name, team, gender from student where team = 'R'
union 
select name, team, gender from student where gender = 'F';

/*----------------2-----------------*/
select count(name), team from student group by team;

/*----------------3----------------*/
select avg(math), team from student                 
group by team
order by avg(math);

/*---------------4----------------*/
select team,avg(sci) from student
group by team
order by avg(sci) desc
limit 2;
