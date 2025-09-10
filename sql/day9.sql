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

-- -- Function
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

select * from employees
DELIMITER //
CREATE PROCEDURE CountEmployeesByDept(IN deptId INT, OUT empCount INT)
BEGIN
   SELECT COUNT(*) INTO empCount
   FROM employees
   WHERE department_id = deptId;
END //
DELIMITER ;


-- calling the PROCEDURE   
set @total = 0 ;
call CountEmployeesByDept(2, @total);
select  @total AS total_emp_in_dept2;






