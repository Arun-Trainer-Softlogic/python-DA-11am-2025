-- use company_db;
-- select * from employee_info;

-- select  * from employees 
-- order by salary DESC 
-- limit 3  ;

-- select first_name, last_name, job_title, salary
-- from employees
-- order by salary DESC
-- limit 2;



-- ??distinct Department ID

-- select distinct department_id
-- from employees;

-- select distinct job_title

-- from employees;

-- select * from employees;

-- select distinct * from employees;

-- select count(distinct job_title) AS unique_jobs
-- from employees;


-- select job_title, count(*) AS total_employees
-- from employees
-- group by job_title;


-- select DISTINCT department_id from employees;alter
-- Select department_id, AVG(salary)
-- from employees
-- group by department_id;


-- distinct
-- select distinct department_id from employees;


-- select department_id, count(*) from employees 
-- group by department_id;


-- select count(*) as total_employees, AVG(salary) AS total_avg_salary from employees ;

-- select  first_name, min(salary) as min_salary
-- from employees;

-- select * from employees;

-- select MIN(salary) from employees ;


-- select first_name, last_name, salary
-- from employees
-- where salary = (select MIN(salary) from employees)



-- select 
-- department_id,
-- count(*) as total_employee,
-- sum(salary) As total_salary,
-- avg(salary) As avg_salary,
-- min(salary) AS min_salary,
-- max(salary)As max_salary
-- from employees
-- group by department_id;


-- select  
-- department_id,
-- count(*) AS total_employees,
-- avg(salary) As avg_salary
-- From employees
-- group By department_id
-- having AVG(salary) > 50000

-- **************************************************
-- CONCAT

-- use company_db;
-- SELECT CONCAT(first_name, ' ', last_name) AS full_name
-- FROM employees;

-- SUBSTRING

-- SELECT first_name, SUBSTRING(first_name, 1, 3) AS short_name
-- FROM employees;

-- UPPER CASE

-- SELECT job_title, UPPER(job_title) AS job_upper
-- FROM employees;

-- SELECT e.first_name, LOWER(d.department_name) AS dept_lower
-- FROM employees e
-- JOIN departments d ON e.department_id = d.department_id;

-- SELECT CURDATE() AS today_date;
-- SELECT NOW() AS current_datetime;
-- SELECT first_name, hire_date, YEAR(hire_date) AS hire_year
-- FROM employees;
-- SELECT first_name, hire_date, MONTH(hire_date) AS hire_month
-- FROM employees;

-- SELECT first_name, hire_date, 
--        DATE_ADD(hire_date, INTERVAL 1 YEAR) AS after_one_year,
--        DATE_SUB(hire_date, INTERVAL 6 MONTH) AS six_months_before
-- FROM employees;

-- SELECT first_name, hire_date, 
--        TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) AS years_of_service
-- FROM employees;

-- SELECT first_name, hire_date, 
--        DATE_ADD(hire_date, INTERVAL 1 YEAR) AS after_one_year,
--        DATE_SUB(hire_date, INTERVAL 6 MONTH) AS six_months_before
-- FROM employees;
-- use  company_db;


-- select * from employees;
















