-- create database ar;



-- CREATE TABLE aru (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(50),
--     age INT,
--     grade VARCHAR(10)
-- );


-- show tables;

-- use ar;


-- CREATE TABLE aru (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(50),
--     age INT,
--     grade VARCHAR(10)
-- );




-- select * from aru;

-- insert into  aru (name , age , grade) values (
-- "gokul", 25 , "O"
-- )
-- use school;
--  select * from student;


-- UPDATE STUDENT 
-- SET RANKS = CASE name
-- WHEN 'RAHUL' THEN 1
-- WHEN 'amaya' THEN 2
-- WHEN 'SNEHA' THEN 3
-- WHEN 'PRIYA' THEN 4
-- END;





-- UPDATE STUDENT 
-- SET RANKS  = CASE name 
-- when 'sheha' THEN 45
-- END;




-- SELECT * FROM Student
-- WHERE  class = '9th' or class = '10th';



-- comparison operator
-- select * From student where age between 13 and 15;


-- patten matching
-- select * from student where name LIKE '%ha%' ;

 

-- select * from student where class IN ("7th",'9th')

-- update student set 

-- update student 
-- set grade =  "b" ;

-- select * from student ; 

-- create table newstudent (name varchar(50), age int, grade varchar(50), section varchar(20), marks int, ranks int)
-- INSERT INTO newstudent (name, age, grade, section, marks, ranks)
-- VALUES
-- ('Sheha', 15, '9th', 'A', 45, 3),
-- ('Rahul', 15, '9th', 'A', 60, 1),
-- ('Priya', 13, '7th', 'A', 55, 4),
-- ('Amaya', 14, '8th', 'B', 72, 2),
-- ('Kiran', 16, '10th', 'C', 80, 1),
-- ('Meena', 15, '9th', 'B', 67, 2),
-- ('Arjun', 13, '7th', 'C', 40, 5),
-- ('Nisha', 14, '8th', 'A', 78, 1),
-- ('Ravi', 16, '10th', 'B', 88, 1),
-- ('Sana', 15, '9th', 'C', 50, 4);




-- ALTER  table newstudent add id int primary key auto_increment ;
-- update newstudent set age=25 where name = "sheha";



-- select * from newstudent
-- order by marks desc;


-- select * from newstudent 


-- select * from newstudent
-- order by name ASC;


-- order by age ASC;

-- select * from newstudent
-- limit 3;



-- order by marks DESC 
-- limit 3;


-- select * from newstudent
-- order by marks DESC 
-- limit 3 offset 4;



-- select * from newstudent
--  limit 3 offset 4;


















