-- use company;


-- clusterd Index - primary key data row are stored in order of this key 
-- non-clustered index = A SEPERATE INDEX (LIKE A BOOKMARK POINTING TO THE DATA)

-- CREATE index id_lastname on employees(last_name )
-- select * from employees where last_name = "smith"

-- create view employee_department As 
-- select e.first_name, e.last_name , d.department_name
-- from employees e
-- join departments d on e.department_id = d.department_id;


-- select * from employee_department;


-- select first_name, last_name , salary
-- from employees
-- where salary = (select max(salary)from employees);


-- SELECT first_name, last_name, department_id
-- FROM employees
-- WHERE department_id IN (
--     SELECT department_id
--     FROM employees
--     GROUP BY department_id
--     HAVING COUNT(*) >= 2
-- );
-- Stored procedure
-- DELIMITER //
-- CREATE PROCEDURE GetEmployeesByDept(IN deptId INT)
-- BEGIN
--    SELECT first_name, last_name, job_title
--    FROM employees
--    WHERE department_id = deptId;
-- END //
-- DELIMITER ;

-- Function


-- DELIMITER //
-- CREATE FUNCTION years_of_service(hire_date DATE) RETURNS INT
-- DETERMINISTIC
-- BEGIN
--    RETURN TIMESTAMPDIFF(YEAR, hire_date, CURDATE());
-- END //
-- DELIMITER ;

-- DELIMITER //
-- CREATE PROCEDURE GetEmployeesByDept(IN deptId INT)
-- BEGIN
--    SELECT first_name, last_name, job_title, salary
--    FROM employees
--    WHERE department_id = deptId;
-- END //
-- DELIMITER ;
-- call getEmployeesbyDept(88)



-- select * from employees
-- DELIMITER //
-- CREATE PROCEDURE CountEmployeesByDept(IN deptId INT, OUT empCount INT)
-- BEGIN
--    SELECT COUNT(*) INTO empCount
--    FROM employees
--    WHERE department_id = deptId;
-- END //
-- DELIMITER ;


-- -- calling the PROCEDURE   
-- set @total = 0 ;
-- call CountEmployeesByDept(2, @total);
-- select  @total AS total_emp_in_dept2;



-- use company;
-- select * from employees;




-- DELIMITER //
-- CREATE FUNCTION years_of_service(hire_date DATE) RETURNS INT
-- DETERMINISTIC
-- BEGIN
-- RETURN TIMESTAMPDIFF(YEAR, hire_date, CURDATE());
-- END //
-- DELIMITER ;

-- SELECT first_name, years_of_service(hire_date) AS service_years
-- FROM employees;



-- select first_name , salary, hire_date,
-- AVG (salary) over (order by hire_date rows between 2 
-- preceding and current row) 

-- AS moving_average_salary
-- from employees;

-- select*from employees;


-- select first_name , avg(salary) AS AVG_salary 
-- from employees
-- group by first_name;





-- select first_name , salary, hire_date,
-- avg (salary )over(
-- order by hire_date 
-- rows between 2 preceding and current row ) As moving_avg_salary
-- from employees
-- where employee_id between 101 and 104
-- order by hire_date;



-- use company;




-- select * from employees;

-- SELECT employee_id, first_name, salary, hire_date,
-- 	SUM(salary) OVER (ORDER BY hire_date, employee_id) AS running_total_salary
-- FROM employees;
-- AVG()


-- select e1.employee_id, e1.first_name, e1.salary, e1.hire_date,
-- (
-- select sum(e2.salary)
-- from employees e2 
-- where e2.hire_date < e1.hire_date
-- or (e2.hire_date = e1.hire_date AND 
-- e2.employee_id <= e1.employee_id)
-- )AS running_total_salary
-- from employees e1 
-- order by e1.hire_date, e1.employee_id

-- SELECT department_id, employee_id, first_name, salary, hire_date,
--        SUM(salary) OVER (PARTITION BY department_id ORDER BY hire_date, employee_id) AS running_total_salary
-- FROM employees
-- ORDER BY department_id, hire_date, employee_id;
