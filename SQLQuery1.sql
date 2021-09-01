create database dotnetcore;
create table Dpt(
DepartmentId int identity(1,1),
DepartmentName nvarchar(500)
);

insert into Dpt values('IT');
insert into Dpt values('Support');

Select*from  Dpt;

create table Emp(
EmployeeId int identity(1,1),
EmployeeName nvarchar(500),
Department nvarchar(500),
DateOfJoining datetime,
PhotoFileName nvarchar(500)
);

insert into Emp values('zain','IT',getdate(),'anonymous.png');


Select*from  Emp;