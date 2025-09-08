-- create database company
-- use company;

-- create table departments (department_id int,department_name varchar(50) );

-- INSERT INTO departments (
-- department_id, 
-- department_name
-- ) 
-- VALUES
-- (1, 'HR'),
-- (2, 'Finance'),
-- (3, 'IT'),
-- (4, 'Marketing');


-- select * from departments;


-- create table employees  (
-- employee_id int, 
-- first_name varchar(50), 
-- last_name varchar(50), 
-- job_title varchar(50), 
-- salary decimal(8,2), 
-- department_id int, 
-- hire_date date);



-- INSERT INTO employees (employee_id, first_name, last_name, job_title, salary, department_id, hire_date) VALUES
-- (101, 'Alice', 'Johnson', 'HR Manager', 65000, 1, '2015-03-15'),
-- (102, 'Bob', 'Smith', 'HR Assistant', 40000, 1, '2019-07-01'),
-- (103, 'Charlie', 'Brown', 'Accountant', 50000, 2, '2017-11-12'),
-- (104, 'David', 'Williams', 'Accountant', 52000, 2, '2020-05-20'),
-- (105, 'Eve', 'Davis', 'IT Support', 45000, 3, '2018-02-10'),
-- (106, 'Frank', 'Miller', 'Software Engineer', 70000, 3, '2016-09-23'),
-- (107, 'Grace', 'Wilson', 'Software Engineer', 72000, 3, '2014-01-30'),
-- (108, 'Hank', 'Moore', 'Marketing Specialist', 48000, 4, '2021-06-05'),
-- (109, 'Ivy', 'Taylor', 'Marketing Specialist', 50000, 4, '2019-10-14'),
-- (110, 'Jack', 'Anderson', 'Finance Manager', 75000, 2, '2013-08-18');

-- employees.department_id
-- departments.department_id

-- ALTER TABLE departments
-- ADD PRIMARY KEY (department_id);



-- ALTER TABLE employees
-- ADD CONSTRAINT fk_department
-- FOREIGN KEY (department_id)
-- REFERENCES departments(department_id);


-- show create table employees;
-- SHOW CREATE TABLE employees;
-- SHOW CREATE TABLE departments;

-- INSERT INTO employees 
-- (employee_id, first_name, last_name, job_title, salary, department_id, hire_date)
-- VALUES (111, 'Sam', 'Lee', 'Finance Analyst', 55000, 2, '2022-09-01');


-- alter table employees add primary key (employee_id);


-- insert into departments (department_id,department_name)
-- values(99,"intern");


-- delete from employees where first_name = "sam";


-- insert into employees 
-- (employee_id, first_name, last_name, job_title, salary, department_id, hire_date)
-- values (113, "ron", "teile", "interns", 8000,null,'2023-01-01');

 select e.first_name, e.last_name, d.department_name
from employees e 
inner join departments d 
on e.department_id = d.department_id

-- select e.first_name, e.last_name, d.department_name
-- from employees e 
-- left join departments d 
-- on e.department_id = d.department_id;

-- SELECT e.first_name, e.last_name, d.department_name
-- from employees e 
-- right join departments d 
-- on e.department_id = d.department_id;









-- select * from departments;
-- select * from employees;


