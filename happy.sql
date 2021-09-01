Create database happy;
use happy;


create table employee1(
e_id int not null,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(20),
primary key(e_id)
);

insert into employee1 values(
1,'sam',95000,45,'male','operations');

insert into employee1 values(
2,'bob',80000,21,'male','support');

insert into employee1 values(
3,'Anne',125000,25,'female','analytics');

insert into employee1 values(
4,'julie',73000,30,'female','analytics');

insert into employee1 values(
5,'matt',159000,33,'male','sales');

insert into employee1 values(
6,'jeff',112000,45,'male','operations');

select e_name from employee;

select e_age from employee;

select e_name,e_gender,e_salary from employee;

select * from employee;

select distinct e_gender from employee;

select*from employee where e_gender='female';

select*from employee where e_age<30;

select*from employee where e_salary>100000;

select*from employee where e_gender='male' AND e_age<30;

select*from employee where e_dept='operations' AND e_salary>100000;

select*from employee where e_dept='operations' OR e_dept='analytics';

select*from employee where e_salary>100000 OR e_age>30;

select*from employee where not e_gender='female';

select*from employee where not e_age>30;

select*from employee where e_name LIKE 'j%';

select*from employee where e_age LIKE '3_';

select*from employee1 where e_gender  LIKE 'm%';

select*from employee1 where e_age LIKE '_0';

select*from employee1;

select*from employee1 where e_age BETWEEN 25 and 35;

select*from employee1 where e_salary BETWEEN 90000 and 125000;

select min(e_age) from employee1;

select min(e_salary)from employee1;

select max(e_age) from employee1;

select max(e_salary) from employee1;

select count(*) from employee1 where e_gender='Female';

select sum(e_salary) from employee1;

select sum(e_age) from employee1;

select avg(e_age) from employee1;

select avg(e_salary) from employee1;

select '                           zain';

select ltrim('                           zain');

select 'ZAIN';

select lower('ZAIN');


select 'zain';

select Upper('zain');

select 'zain jahan';

select reverse('zain jahan');

select 'zain';

select SUBSTRING('zain',1,2);

select*from employee1 order by e_salary ASC;

select*from employee1 order by e_salary DESC;

select top 3* from employee1;

select top 3 * from employee1 order by e_age DESC;

select avg(e_salary),e_gender from employee1 group by e_gender;

select avg(e_age),e_dept from employee1 group by e_dept order by avg(e_age) desc;

select e_dept ,avg(e_salary) as avg_salary
from employee1
group by e_dept
having avg(e_salary)<100000;

select e_dept,avg(e_salary) as avg_salary
from employee1
group by e_dept
having avg(e_salary)<100000;

update employee1 set e_age='43' where e_name='sam';

select*from employee1;

update employee1 set e_dept='tech' where e_gender='female';

update employee1 set e_salary='500000';

delete from employee1 where e_age=33;

delete from employee1 where e_name='sam';

truncate table employee;

select*from department1;

create table department1(
d_id int,
d_name nvarchar(50),
d_location nvarchar(50)
);
insert into department1 values(1,'content','newyork');
insert into department1 values(2,'support','newyork');
insert into department1 values(3,'analytics','newyork');
insert into department1 values(4,'tech','newyork');
insert into department1 values(5,'sales','newyork');
insert into department1 values(6,'finance','newyork');



select employee1.e_name,employee1.e_dept,department1.d_name,department1.d_location 
from employee1 
inner join department1 on employee1.e_dept=department1.d_name;

select employee1.e_name,employee1.e_dept,department1.d_name,department1.d_location
from employee1
left join department1
on employee1.e_dept=department1.d_name;

select employee1.e_name,employee1.e_dept,department1.d_name,department1.d_location
from employee1
right join department1
on employee1.e_dept=department1.d_name;

select employee1.e_name,employee1.e_dept,department1.d_name,department1.d_location
from employee1
full join department1
ON  employee1.e_dept=department1.d_name;

update employee1
set e_age=e_age+10
from employee1
join department1 on employee1.e_dept=department1.d_name
where d_location='new york';

select*from employee1;
select*from department1;

delete employee1 
from employee1
join department1 on employee1.e_dept=department1.d_name
where d_location='newyork';

select*from employee1
union
select*from department1

create table student_details1(
s_id int,
s_name nvarchar(50),
s_marks int);
insert into  student_details1 values(1,'Sam',45);
insert into  student_details1 values(2,'bob',87);
insert into  student_details1 values(3,'anne',73);
insert into  student_details1 values(4,'julia',92);

select*from student_details1;

create table student_details2(
s_id int,
s_name nvarchar(50),
s_marks int);
insert into  student_details2 values(3,'anne',73);
insert into  student_details2 values(4,'julia',92);
insert into  student_details2 values(5,'matt',65);


select*from student_details2;

select*from student_details1
union
select*from student_details2

select*from student_details1
union all
select*from student_details1

select*from student_details1
except
select*from student_details2

select*from student_details1
intersect
select*from student_details2

create view  female_employees as
select*from employee1
where e_gender='female';

select*from female_employees;

create view male_employees as
select*from employee1
where e_gender='male';

select*from male_employees;

drop view male_employees;

alter table employee1
add e_dob date;

select*from employee1;

alter table employee1
drop column e_dob;

create table employee1_target(
e_id int not null,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(20),
primary key(e_id)
);

insert into employee1_target values(
1,'sam',95000,45,'male','operations');

insert into employee1_target values(
2,'bob',80000,21,'male','support');

insert into employee1_target values(
3,'Anne',125000,25,'female','analytics');

insert into employee1_target values(
4,'julie',73000,30,'female','analytics');

insert into employee1_target values(
5,'matt',159000,33,'male','sales');

insert into employee1_target values(
6,'jeff',112000,45,'male','operations');

select*from employee1_target;
create table employee1_source(
e_id int not null,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(20),
primary key(e_id)
);

insert into employee1_source values(
1,'sam',95000,45,'male','operations');

insert into employee1_source values(
2,'bob',80000,21,'male','support');

insert into employee1_source values(
3,'Anne',125000,25,'female','analytics');

insert into employee1_source values(
4,'julie',73000,30,'female','analytics');

insert into employee1_source values(
5,'matt',159000,33,'male','sales');

insert into employee1_source values(
6,'jeff',112000,45,'male','operations');

select*from employee1_source;

merge employee1_target AS T
using employee1_source AS S
ON T.e_id=S.e_id
When MATCHED
Then update set T.e_salary=S.e_salary ,T.e_age=S.e_age

WHEN NOT MATCHED BY TARGET
THEN insert (e_id,e_name,e_salary,e_age,e_gender,e_dept)
values(S.e_id,S.e_name,S.e_salary,S.e_age,S.e_gender,S.e_dept)

WHEN NOT MATCHED BY SOURCE
THEN delete;

select*from employee1_target;

select* from employee1_source;

create function add_five(@num as int)
RETURNS int
AS
BEGIN
RETURN(
@num+5
)
end

select dbo.add_five(10);

select*from employee1_source

create function select_gender(@gender as varchar(20))
returns table
as
return(
select*from employee1_source where e_gender=@gender
)
select*from dbo.select_gender('male');

select*from dbo.select_gender('female');

create table #student(
s_id int,
s_name varchar(20),
);

select*from #student;

insert into #student values(
1,'zain')

select
case
when 10<20
then '10 is greater than 20'
when 10>20
then '10 is less than 20'
else '10 is equal to 20'
end

select*from employee1_source;

select*,grade
case 
when 
e_salary<90000 then 'c'
e_salary<120000 then 'd'
else 'A'
end
from employee1_source
go

