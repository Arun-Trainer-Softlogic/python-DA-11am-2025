-- Drop tables if they already exist
-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS departments;

-- Departments table
-- CREATE TABLE departments (
--     department_id INT PRIMARY KEY,
--     department_name VARCHAR(100)
-- );

-- Employees table
-- CREATE TABLE employees (
--     employee_id INT PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     job_title VARCHAR(50),
--     salary DECIMAL(10,2),
--     department_id INT,
--     hire_date DATE,
--     FOREIGN KEY (department_id) REFERENCES departments(department_id)
-- );

-- Insert sample departments
-- INSERT INTO departments (department_id, department_name) VALUES
-- (1, 'HR'),
-- (2, 'Finance'),
-- (3, 'IT'),
-- (4, 'Marketing');

-- Insert sample employees
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





-- SELECT * FROM departments;


-- SELECT DISTINCT job_title FROM employees;

-- SELECT * FROM employees;
-- SELECT COUNT(DISTINCT department_id) AS unique_departments
-- FROM employees;


-- SELECT 
--     COUNT(*) AS total_employees,
--     SUM(salary) AS total_salary,
--     AVG(salary) AS avg_salary,
--     MIN(salary) AS min_salary,
--     MAX(salary) AS max_salary
-- FROM employees;


-- SELECT COUNT(*) AS total_employees
-- FROM employees;

-- SELECT SUM(salary) AS total_salary
-- FROM employees;

-- SELECT AVG(salary) AS avg_salary
-- FROM employees;

-- SELECT MIN(salary) AS min_salary
-- FROM employees;

-- SELECT MAX(salary) AS max_salary
-- FROM employees;

-- 1. Simple Aggregates on the Whole Table

-- SELECT 
--     COUNT(*) AS total_employees,
--     SUM(salary) AS total_salary,
--     AVG(salary) AS avg_salary,
--     MIN(salary) AS min_salary,
--     MAX(salary) AS max_salary
-- FROM employees;

-- 2. Aggregates Grouped by Department

-- SELECT 
--     d.department_name,
--     COUNT(e.employee_id) AS total_employees,
--     SUM(e.salary) AS total_salary,
--     AVG(e.salary) AS avg_salary,
--     MIN(e.salary) AS min_salary,
--     MAX(e.salary) AS max_salary
-- FROM employees e
-- JOIN departments d ON e.department_id = d.department_id
-- GROUP BY d.department_name;


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


-- SELECT COUNT(DISTINCT job_title) AS unique_job_titles
-- FROM employees;

-- 1. Count Employees per Department

-- SELECT department_id, COUNT(*) AS total_employees
-- FROM employees
-- GROUP BY department_id;

-- 2. Average Salary per Job Title

-- SELECT job_title, AVG(salary) AS avg_salary
-- FROM employees
-- GROUP BY job_title;

-- 2. HAVING
-- What it does:
-- Filters groups (while WHERE filters rows).
-- Used with aggregate functions

-- 3: Show Departments with More Than 2 Employees

-- SELECT department_id, COUNT(*) AS total_employees
-- FROM employees
-- GROUP BY department_id
-- HAVING COUNT(*) > 2;

-- 4: Show Job Titles with Average Salary > 60,000

-- SELECT job_title, AVG(salary) AS avg_salary
-- FROM employees
-- GROUP BY job_title
-- HAVING AVG(salary) >= 75000;



