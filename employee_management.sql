create database employee_management_v2;

alter database employee_management_v2
collate Latin1_General_100_CI_AS_SC_UTF8;

use employee_management_v2;
go

-- use master;
-- go
-- drop database employee_management_v2;

create table employees (
	id	int not null identity(1,1) primary key,
	name nvarchar(45) not null,
	department nvarchar(20) not null,
	salary int not null,
	gender char(10) not null,
	age int not null,
	city nchar(45)
);

insert into employees(name, department, salary, gender, age, city) values
('Nguyễn Văn Tý', 'IT', 15000, 'Nam', 22, 'Ho Chi Minh'),
('Nguyễn Thị Sửu', 'IT', 18000, 'Nữ', 25, 'Da Nang'),
('Lê Thị Dần', 'IT', 20000, 'Nữ', 26, 'Ha Noi'),
('Trần Văn Mão', 'Development', 15000, 'Nam', 18, 'Ha Noi'),
('Lê Thị Mỹ', 'Development', 15000, 'Nữ', 18, 'Da Nang'),
('Trần Văn Tỵ', 'Development', 15000, 'Nam', 20, 'Ho Chi Minh'),
('Đinh Tiến Ngọ', 'Development', 15000, 'Nữ', 20, 'Ho Chi Minh')
;

select * from employees;
select count(id) from employees;

-- use master;
-- go
-- drop table employees;

select e.id, e.name, e.gender, e.age 
from employees as e
where gender = 'Nữ' and age > 20;

select * from employees;

select e.department, sum(e.salary) as total_salary 
from employees e
group by department;

select e.department, sum(e.salary) as total_salary 
from employees e
group by department 
having e.department = 'Development';

select * from employees;

select e.department, sum(e.salary) as total_salary, e.city
from employees e 
where e.city = 'Ho Chi Minh'
group by department, e.city
having e.department = 'Development';

