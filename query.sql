-- Task Work
CREATE TABLE students(
student_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50)UNIQUE,
dateofbirth date
);
INSERT INTO students VALUES 
(1,'john','doe','john@gmail.com','2000-01-15'),
(2,'jane','smith','jane@gmail.com','2001-02-20'),
(3, 'alice','johnson','alice@gmail.com','1999-03-25'),
(4, 'bob','brown','bob@gmail.com','2002-04-30');
SELECT * FROM students2;

CREATE TABLE enrollment(
eid INT PRIMARY KEY,
student_id INT (50)NOT NULL,
course_name VARCHAR(50) NOT NULL,
edate DATE,
FOREIGN KEY (student_id)REFERENCES students(student_id)
);

INSERT INTO enrollment VALUES 
(1,1,'math 101','2023-09-01'),
(2,1,'history 201','2023-09-01'),
(3,2,'math 101','2023-09-01'),
(4,3,'science 101','2023-09-01');

 
SELECT students.first_name,students.last_name ,enrollment.course_name,enrollment.edate FROM students
INNER JOIN  enrollment ON students.student_id=enrollment.student_id; 
 
SELECT students.first_name,students.last_name ,enrollment.course_name,enrollment.edate FROM students
LEFT JOIN  enrollment ON students.student_id=enrollment.student_id;
 
SELECT students.first_name,students.last_name ,enrollment.course_name,enrollment.edate FROM students
RIGHT JOIN  enrollment ON students.student_id=enrollment.student_id; 

SELECT students.first_name,students.last_name ,enrollment.course_name,enrollment.edate FROM students
CROSS JOIN  enrollment ; 

 SELECT * FROM students;
  SELECT * FROM enrollment;