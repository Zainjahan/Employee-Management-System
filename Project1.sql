create table dbo.Department(
DepartmentId int identity(1,1),
DepartmentName nvarchar(500)
);

insert into dbo.Department values('IT');
insert into dbo.Department values('Support');

select*from dbo.Department;

create table dbo.Employee(
EmployeeId int identity(1,1),
EmployeeName nvarchar(500),
Department nvarchar(500),
DateofJoining datetime,
PhotoFileName nvarchar(500)
);

insert into dbo.Employee values('zain','IT',getdate(),'anonymous.png');
insert into dbo.Employee values('zain','IT',getdate(),'anonymous.png');
insert into dbo.Employee values('zain','IT',getdate(),'anonymous.png');
insert into dbo.Employee values('zain','IT',getdate(),'anonymous.png');
insert into dbo.Employee values('zain','IT',getdate(),'anonymous.png');


select*from dbo.Employee;

