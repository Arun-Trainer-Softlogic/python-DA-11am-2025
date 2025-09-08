-- use company_db;

-- select * from employees;
-- select curdate() As today_date;

-- select Now() As current_dateandtime;

-- select  year(curdate()) As this_year ;

-- select first_name, hire_date, year(hire_date)As hire_year
-- from employees;

-- select first_name, hire_date, month(hire_date)As hire_Month
-- from employees;

-- select first_name, hire_date, 
-- datediff(curdate(), hire_date)As days_worked
-- From employees;

-- select first_name , hire_date,
-- timestampdiff(year, hire_date, curdate()) As year_of_service
-- from employees;


-- select first_name, hire_date,
-- date_sub(hire_date, interval 6 month )As six_months_before,
-- date_add(hire_date, interval 1 year) As after_one_year
--  from employees;



-- select first_name , hire_date, 
-- date_add(hire_date, interval 30 day) as After_30_days
-- from employees;

-- SELECT CONCAT(first_name, ' ', last_name) AS full_name
-- FROM employees;

-- SELECT first_name, SUBSTRING(first_name, 1, 3) AS short_name
-- FROM employees;
-- SELECT job_title, UPPER(job_title) AS job_upper
-- FROM employees;

-- SELECT last_name, LOWER(last_name) AS last_lower
-- FROM employees;
-- SELECT 
--     CONCAT(UPPER(first_name), ' ', LOWER(last_name)) AS formatted_name,
--     SUBSTRING(job_title, 1, 5) AS job_short
-- FROM employees;
