-- Task Work
CREATE TABLE employee(
employeeid INT PRIMARY KEY,
firstname VARCHAR(50),
lastname VARCHAR(50),
departmentid INT,
salary DOUBLE(7,2),
hiredate DATE,
FOREIGN KEY (departmentid) REFERENCES departments(departmentid)
);
INSERT INTO employee VALUES
(1,'john','doe',1,50000.00,'2020-01-15'),
(2,'jane','smith',2,60000.00,'2019-01-20'),
(3,'alice','jonhson',3,55000.00,'2018-01-25'),
(4,'bob','brown',4,70000.00,'2017-01-30'),
(5,'charlie','davis',2,75000.00,'2016-01-15'),
(6,'eve','white',3,50000.00,'2015-01-20');
CREATE TABLE departments(
departmentid INT PRIMARY KEY,
departmentname VARCHAR(50)
);
INSERT INTO departments VALUES 
(1,'Humanresources'),
(2,'IT'),
(3,'MARKETINGs'),
(4,'FINANCE');

SELECT departments.departmentid,AVG(salary) AS AVERAGE_Salary FROM employee 
INNER JOIN departments ON employee.departmentid=departments.departmentid
 GROUP BY departmentid ;
 
 SELECT departments.departmentid,AVG(salary) AS AVERAGE_Salary FROM employee 
INNER JOIN departments ON employee.departmentid=departments.departmentid
 GROUP BY departmentid HAVING AVERAGE_Salary>55000 ORDER BY AVERAGE_Salary ASC;
 
 SELECT departments.departmentid,SUM(salary) AS TOTAL_Salary FROM employee 
INNER JOIN departments ON employee.departmentid=departments.departmentid
 GROUP BY departmentid ORDER BY TOTAL_Salary DESC;
 
 SELECT departments.departmentid,SUM(salary) AS TOTAL_Salary FROM employee 
INNER JOIN departments ON employee.departmentid=departments.departmentid
 GROUP BY departmentid HAVING TOTAL_Salary>100000 ORDER BY TOTAL_Salary DESC;
 
 

 SELECT * FROM departments;
 SELECT * from employee;