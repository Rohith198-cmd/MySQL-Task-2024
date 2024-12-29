-- Task Work
CREATE TABLE emp(
 employee_id INT PRIMARY KEY,
 empname VARCHAR(50),
 dep VARCHAR(50),
 salary BIGINT
 );
 ALTER TABLE emp ADD COLUMN position VARCHAR(50) NOT NULL;
 ALTER TABLE emp MODIFY salary INT UNSIGNED;
 ALTER TABLE emp RENAME COLUMN dep TO department;
 INSERT INTO emp VALUES (1,'walter','manager',-1,50000);
 ALTER TABLE emp DROP COLUMN position;
 
 SELECT * FROM emp;