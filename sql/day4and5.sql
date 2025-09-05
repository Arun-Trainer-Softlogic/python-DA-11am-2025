-- create table departments(
-- department_id INT primary Key,
-- department_name varchar(100)
-- )

-- create table employees (
--     employee_id INT PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     job_title VARCHAR(50),
--     salary DECIMAL(10,2),
--     department_id INT,
--     hire_date DATE,
--  FOREIGN KEY (department_id) REFERENCES departments(department_id)
--  )

-- INSERT INTO departments (department_id, department_name) VALUES
-- (1, 'HR'),
-- (2, 'Finance'),
-- (3, 'IT'),
-- (4, 'Marketing');


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


-- select * from departments;
-- select * from employees;


-- select distinct job_title from employees;

-- select count(distinct department_id) AS unique_departments
-- from employees;


--  select distinct department_id, job_title
--  from employees;


-- select 
-- department_id,
-- job_title,
-- count(*)as total_employees,
-- sum(salary) AS total_salary,
-- AVG(salary) AS avg_salary,
-- min(salary) AS min_salary,
-- max(salary) AS max_salary
-- from employees
-- group by department_id, job_title;


-- SELECT 
--     d.department_name,
--     COUNT(e.employee_id) AS total_employees,
--     SUM(e.salary) AS total_salary,
--     AVG(e.salary) AS avg_salary,
--     MIN(e.salary) AS min_salary,
--     MAX(e.salary) AS max_salary
-- FROM employees e
-- JOIN departments d ON e.department_id = d.department_id
-- GROUP BY d.department_name

-- SELECT 
--     departments.department_name,
--     COUNT(employees.employee_id) AS total_employees,
--     SUM(employees.salary) AS total_salary,
--     AVG(employees.salary) AS avg_salary,
--     MIN(employees.salary) AS min_salary,
--     MAX(employees.salary) AS max_salary
-- FROM employees
-- JOIN departments ON employees.department_id = departments.department_id
-- GROUP BY departments.department_name;




-- count(employees.salary)


-- select department_id, count(*) As total_employees
-- from employees
-- group by department_id

-- select job_title,Avg(salary)AS avg_salary
-- From Employees
-- group by Job_title;

-- SELECT department_id, COUNT(*) AS total_employees
-- FROM employees
-- GROUP BY department_id
-- HAVING COUNT(*) > 2;


-- select * from departments;


-- select job_title, AVG(salary) AS avg_salary
-- from employees 
-- group by job_title 
-- having avg(salary)> 60000;



-- select job_title, AVG(salary)
-- from employees 
-- -- where AVG(salary)> 60000 
-- -- group by job_title;

-- GROUP BY job_title
-- HAVING AVG(salary) > 60000;

-- DELETE FROM table_name
-- WHERE condition;


-- use company_db;
-- select first_name, salary from employees;

-- select * from employees;






-- select first_name , job_title 
-- from employees;


-- select employee_id, job_title 
-- from employees;



-- select * from employees
-- select last_name, salary
-- from employees;



-- select last_name
-- from employees


-- employee_inf0
-- pf_id parent_name alternate_phone 

-- use company_db;
-- create table employee_info ( 
-- pf_id INT, 
-- parent_name varchar(15), 
-- alternate_phone varchar(15)
-- );


-- select * from employee_info 


-- select department_id, salary 
-- from employees


-- select department_id, count(*) AS total_employees
-- from employees
-- group by department_id;   


-- select department_id, avg(salary) AS avg_salary 
-- from employees 
-- group by department_id

-- use company_db;
-- SELECT * 
-- FROM employees
-- LIMIT 5;

-- SELECT first_name, last_name, salary
-- FROM employees
-- ORDER BY salary Desc
-- Limit 3;

-- SELECT first_name, last_name, salary
-- FROM employees
-- ORDER BY employee_id
-- LIMIT 3 OFFSET 2;

-- SELECT first_name, last_name, job_title, salary
-- FROM employees
-- ORDER BY salary DESC
-- LIMIT 2;

-- SELECT DISTINCT department_id
-- FROM employees;

-- SELECT DISTINCT job_title
-- FROM employees;
-- SELECT DISTINCT department_id, job_title
-- FROM employees;

-- SELECT COUNT(DISTINCT job_title) AS unique_jobs
-- FROM employees;
-- SELECT DISTINCT job_title
-- FROM employees;
-- SELECT job_title, COUNT(*) AS total_employees
-- FROM employees
-- GROUP BY job_title;




















