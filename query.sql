-- Task Work
CREATE TABLE students(
id int UNSIGNED,
stdname varchar(50),
gender ENUM('male','female'),
age int,
phoneno int,
gpa DOUBLE(2,1),
dateofbirth DATE,
reg_date DATETIME
);

INSERT INTO students VALUES(1,'Anbu Krishnan','Female',20,987647123,3.8,'2000-05-15','2022-03-20 09:00:00'),
(2,'Siva Kumar','Male',22,468776449,3.9,'1999-12-10','2022-03-21 10:30:00'),
(3,'Lakshmi Sadish','Female',21,875647123,3.7,'2001-02-28','2022-03-22 11:45:00'),
(4,'Amutha Balaji','Female',23,98765123,3.5,'1998-09-05','2022-03-23 13:15:00'),
(5,'Devaraj Kanakaraj','Male',24,935647123,3.6,'1997-07-20','2022-03-24 14:45:00'),
(6,'Kavitha Rama','Female',20,987747123,3.8,'2000-05-15','2022-03-20 09:00:00'),
(7,'Mano Madurai','Female',22,94327123,3.9,'1999-12-10','2022-03-21 10:30:00'),
(8,'Ramesh Subramaniyam','Male',21,905647123,3.7,'2001-02-28','2022-03-22 11:45:00'),
(9,'Kaviya Balaji','Female',23,986571232,3.5,'1998-09-05','2022-03-23 13:15:00'),
(10,'Santosh Raj','Male',24,987566512,3.6,'1997-07-20','2022-03-24 14:45:00');

SELECT age FROM students WHERE age>20;
SELECT id,stdname,gender,age,phoneno,gpa,dateofbirth,reg_date FROM students WHERE gender='male' AND age>20;

SELECT id,stdname,gender,age,phoneno,gpa,dateofbirth,reg_date FROM students WHERE gender='male' OR gender='female' AND gpa>3.8;

SELECT * FROM demostudent WHERE age='18' OR age='22'LIKE phoneno='%98%';
                               
SELECT id,stdname,gender,age,phoneno,gpa,dateofbirth,reg_date FROM students WHERE reg_date>'2022-01-01' AND stdname LIKE 'a%';
SELECT * FROM students;
