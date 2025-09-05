-- create database schoolAR;


-- drop database schoolar;



-- use schoolar;

-- CREATE TABLE student (
--     student_id INT AUTO_INCREMENT PRIMARY KEY,   -- unique ID for each student
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     age INT,
--     grade VARCHAR(10),                           -- e.g., "7th", "10th"
--     section CHAR(1),                             -- e.g., A, B, C
--     roll_no INT,                                 -- class roll number
--     gender ENUM('Male','Female','Other'),
--     dob DATE,                                    -- date of birth
--     address VARCHAR(255),
--     phone VARCHAR(15),
--     email VARCHAR(100),
--     guardian_name VARCHAR(100),
--     guardian_phone VARCHAR(15),
--     marks INT,                                   -- optional total marks
--     admission_date INT
-- );



-- INSERT INTO student 
-- (first_name, last_name, age, grade, section, roll_no, gender, dob, address, phone, email, guardian_name, guardian_phone, marks, admission_date)
-- VALUES
-- ('Sheha',   'Khan',   15, '9th', 'B', 1, 'Female', '2010-05-12', '123 Main St', '9876543210', 'sheha@example.com', 'Imran Khan', '9876500001', 450, 2021),
-- ('Rahul',   'Verma',  15, '9th', 'B', 2, 'Male',   '2010-03-22', '45 Elm St',   '9876543211', 'rahul@example.com', 'Suresh Verma','9876500002', 420, 2021),
-- ('Priya',   'Singh',  13, '7th', 'B', 3, 'Female', '2012-08-17', '67 Pine St',  '9876543212', 'priya@example.com', 'Anil Singh', '9876500003', 410, 2022),
-- ('Amaya',   'Nair',   14, '8th', 'B', 4, 'Female', '2011-01-10', '89 Maple St', '9876543213', 'amaya@example.com', 'Ravi Nair',  '9876500004', 430, 2022),
-- ('Aarav',   'Sharma', 14, '8th', 'A', 5, 'Male',   '2011-07-03', '22 Lake Rd',  '9876543214', 'aarav@example.com', 'Manoj Sharma','9876500005', 440, 2022),
-- ('Diya',    'Patel',  13, '7th', 'C', 6, 'Female', '2012-09-09', '56 Hill St',  '9876543215', 'diya@example.com', 'Rakesh Patel','9876500006', 415, 2022),
-- ('Karan',   'Mehta',  16, '10th','B', 7, 'Male',   '2009-12-25', '11 Oak St',   '9876543216', 'karan@example.com', 'Ajay Mehta', '9876500007', 470, 2021),
-- ('Meera',   'Joshi',  15, '9th', 'A', 8, 'Female', '2010-04-14', '90 Birch St', '9876543217', 'meera@example.com', 'Sanjay Joshi','9876500008', 460, 2021),
-- ('Ananya',  'Reddy',  14, '8th', 'C', 9, 'Female', '2011-11-20', '34 Cedar St', '9876543218', 'ananya@example.com','Venkat Reddy','9876500009', 450, 2022),
-- ('Rohan',   'Kapoor', 12, '6th', 'B',10, 'Male',   '2013-06-06', '77 Willow St','9876543219', 'rohan@example.com', 'Alok Kapoor','9876500010', 380, 2023),
-- ('Sanya',   'Bose',   13, '7th', 'A',11, 'Female', '2012-02-18', '13 Rose St',  '9876543220', 'sanya@example.com', 'Arun Bose', '9876500011', 400, 2023),
-- ('Kabir',   'Das',    17, '11th','C',12, 'Male',   '2008-10-12', '29 Pearl St', '9876543221', 'kabir@example.com', 'Dev Das',   '9876500012', 490, 2020),
-- ('Ishita',  'Gupta',  15, '9th', 'B',13, 'Female', '2010-07-30', '88 Vine St',  '9876543222', 'ishita@example.com','Mukesh Gupta','9876500013', 445, 2021),
-- ('Arjun',   'Chopra', 16, '10th','A',14, 'Male',   '2009-09-05', '54 Palm St',  '9876543223', 'arjun@example.com', 'Naveen Chopra','9876500014', 480, 2021),
-- ('Neha',    'Mishra', 14, '8th', 'B',15, 'Female', '2011-03-28', '72 Lotus St', '9876543224', 'neha@example.com', 'Rajesh Mishra','9876500015', 455, 2022),
-- ('Aditya',  'Agarwal',13, '7th', 'C',16, 'Male',   '2012-12-11', '61 Ivy St',   '9876543225', 'aditya@example.com','Pankaj Agarwal','9876500016', 430, 2022),
-- ('Ritika',  'Shah',   12, '6th', 'A',17, 'Female', '2013-05-09', '37 Daisy St', '9876543226', 'ritika@example.com','Kiran Shah', '9876500017', 395, 2023),
-- ('Dev',     'Malhotra',16,'10th','C',18, 'Male',   '2009-02-07', '15 River St', '9876543227', 'dev@example.com',  'Sunil Malhotra','9876500018', 475, 2021),
-- ('Pooja',   'Chawla', 15, '9th', 'B',19, 'Female', '2010-08-18', '19 Garden St','9876543228', 'pooja@example.com','Ashok Chawla','9876500019', 460, 2021),
-- ('Vikram',  'Saxena', 14, '8th', 'A',20, 'Male',   '2011-01-29', '80 Pine Rd',  '9876543229', 'vikram@example.com','Pradeep Saxena','9876500020', 440, 2022),
-- ('Lavanya', 'Iyer',   13, '7th', 'B',21, 'Female', '2012-11-02', '25 Hill Rd',  '9876543230', 'lavanya@example.com','Ramesh Iyer','9876500021', 420, 2022),
-- ('Sahil',   'Bhatia', 12, '6th', 'C',22, 'Male',   '2013-09-12', '46 Lake St',  '9876543231', 'sahil@example.com','Girish Bhatia','9876500022', 385, 2023),
-- ('Anvi',    'Menon',  14, '8th', 'C',23, 'Female', '2011-05-16', '91 Park St',  '9876543232', 'anvi@example.com', 'Vijay Menon','9876500023', 445, 2022),
-- ('Tanmay',  'Sethi',  15, '9th', 'A',24, 'Male',   '2010-10-23', '33 Lane St',  '9876543233', 'tanmay@example.com','Nitin Sethi','9876500024', 455, 2021),
-- ('Muskan',  'Jain',   16, '10th','B',25, 'Female', '2009-06-19', '17 Cross Rd', '9876543234', 'muskan@example.com','Rajeev Jain','9876500025', 470, 2021),
-- ('Harsh',   'Gill',   13, '7th', 'C',26, 'Male',   '2012-01-08', '64 Green St', '9876543235', 'harsh@example.com','Tejinder Gill','9876500026', 410, 2022),
-- ('Simran',  'Chauhan',14, '8th', 'B',27, 'Female', '2011-12-04', '48 River Rd', '9876543236', 'simran@example.com','Rohit Chauhan','9876500027', 460, 2022),
-- ('Yash',    'Dwivedi',15, '9th', 'C',28, 'Male',   '2010-04-27', '85 Lane St',  '9876543237', 'yash@example.com','Mohan Dwivedi','9876500028', 450, 2021),
-- ('Aditi',   'Kulkarni',16,'10th','A',29, 'Female', '2009-11-15', '58 Rose Rd',  '9876543238', 'aditi@example.com','Shankar Kulkarni','9876500029', 480, 2021),
-- ('Parth',   'Bhatt',  17, '11th','B',30, 'Male',   '2008-07-22', '27 Lotus Rd', '9876543239', 'parth@example.com','Mahesh Bhatt','9876500030', 495, 2020);


-- select * from student;



-- select first_name, last_name, grade, marks
-- from student
-- order by marks DESC;
-- select * from student;


-- select first_name, last_name, grade, marks
-- from student 
-- order by marks DESC
-- limit 5 offset 4;

-- SELECT first_name, last_name, grade, section
-- FROM student
-- ORDER BY first_name ASC
-- LIMIT 5;


-- select * from student;


-- SELECT first_name, last_name, grade, marks
-- FROM student
-- ORDER BY grade ASC, marks DESC
-- LIMIT 10;



-- SELECT first_name, last_name, grade, marks
-- FROM student
-- ORDER BY cast(grade AS UNSIGNED) ASC, marks DESC
-- LIMIT 30;


SELECT DISTINCT grade FROM student;






-- SELECT first_name, last_name, grade, marks
-- FROM student
-- ORDER BY grade + 0, marks DESC;




























