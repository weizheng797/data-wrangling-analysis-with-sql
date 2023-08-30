use test;

drop table if exists EmployeeInfo;
create table EmployeeInfo(
	EmpID int not null auto_increment primary key,
    EmpFname varchar(255),
    EmpLname varchar(255),
    Department varchar(255),
    Project varchar(255),
    Address varchar(255),
    DOB date,
    Gender varchar(255)
);

insert into EmployeeInfo(EmpFname, EmpLname, Department, Project, Address, DOB, Gender)
values
	('Sanjay', 'Mehra', 'HR', 'P1', 'Hyderabad(HYD)', '1976-01-12', 'M'),
    ('Ananya', 'Mishra', 'Admin', 'P2', 'Delhi(DEL)', '1968-02-05', 'F'),
    ('Rohan', 'Diwan', 'Account', 'P3', 'Mumbai(BOM)', '1980-01-01', 'M'),
    ('Sonia', 'Kulkarni', 'HR', 'P1', 'Hyderabad(HYD)', '1982-02-05', 'F'),
    ('Ankit', 'Kapoor', 'Admin', 'P2', 'Delhi(DEL)', '1984-03-07', 'M'),
    ('Sharma', 'Tina', 'Account', 'P3', 'Delhi(DEL)', '1980-03-08', 'F');

select * from EmployeeInfo;
