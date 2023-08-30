use test;

drop table if exists EmployeePosition;
create table EmployeePosition(
	EmpID int not null auto_increment primary key,
    EmpPosition varchar(255),
    DateOfJoin varchar(255),
    Salary int
);

insert into EmployeePosition(EmpPosition, DateOfJoin, Salary) values
	('Manager', '01/05/2015', 500000),
	('Executive', '02/05/2016', 75000),
	('Manager', '01/05/2014', 90000),
	('Lead', '02/05/2012', 85000),
	('Executive', '01/05/2010', 300000),
	('Executive', '01/05/2019', 350000);

select * from EmployeePosition;
