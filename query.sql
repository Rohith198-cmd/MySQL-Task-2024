-- Task Work
CREATE TABLE student(
student_id INT PRIMARY KEY auto_increment,
first_name VARCHAR(50),
last_name VARCHAR(50),
Email VARCHAR(50) UNIQUE NOT NULL,
dateofbirth DATE
);
DELETE FROM student WHERE student_id=2;
INSERT INTO student VALUES (1,'rohith','sharma','','2024-08-24');
INSERT INTO student VALUES (1,'rohith','sharma','rohith1967@gmail.com','2024-08-24'),
 (2,'virat','kohli','virat@gmail.com','2024-08-24'),
 (3,'ms','dhoni','dhoni@gmail.com','2024-08-24');
 
CREATE TABLE enrollments(
enrollmentid INT PRIMARY KEY AUTO_INCREMENT,
student_id INT UNIQUE,
course_name VARCHAR(50) UNIQUE,
enrollmentdate date ,
FOREIGN KEY (student_id)REFERENCES student(student_id)
);
INSERT INTO enrollments VALUES(1,1,'bca','2019-05-30'),
(2,1,'bca','2019-06-30'),
(3,3,'bsc','2019-07-30');

SELECT * FROM student;
SELECT * FROM enrollments;