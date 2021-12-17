create table employees (
id serial primary key, 
employee_name varchar (70) not null
) 


insert into employees (id, employee_name)
values (default, 'Sofia Sapega');


create table salary ( 
id serial primary key,
monthly_salary int not null);


insert into salary (id, monthly_salary)
values (default, '2600');



create table employee_salary ( 
id serial  primary key,
employee_id int not null unique);

alter table employee_salary
add column salary_id Int not null;

insert into employee_salary (id, employee_id, salary_id)
values (default, 56, 22);

create table roles ( 
id Serial primary key,
role_name int not null unique);

alter table roles
alter column role_name type varchar(30)
using role_name :: varchar;

insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer');

select * from salary;
select * from employees;
select * from employee_salary;
select * from roles;
select * from roles_employee;

create table roles_employee (
	id serial primary key,
	employee_id Int not null unique,
	role_id Int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)	
);


insert into roles_employee (id, employee_id, role_id)
values (default, 34, 6);