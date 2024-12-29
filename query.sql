-- Task Work
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
cname VARCHAR(50) NOT NULL,
email VARCHAR(30) UNIQUE,
phoneno VARCHAR (100),
address VARCHAR(100)
);
INSERT INTO customers VALUES (1001,'ajith','ajith@gmail.com',1234567890,'chennai,Tamilnadu'),
 (1002,'viajy','vijay@gmail.com',9813456780,'chennai,Tamilnadu'),
 (1003,'rajesh','rajesh@gmail.com',9824567890,'coimbatore,Tamilnadu'),
 (1004,'kumar','kumar@gmail.com',7234567890,'madurai,Tamilnadu'),
 (1005,'deepa','deepa@gmail.com',4234567890,'trichy,Tamilnadu'),
 (1006,'meena','meena@gmail.com',6234567890,'salem,Tamilnadu'),
 (1007,'suresh','suresh@gmail.com',9774567890,'tirunelveli,Tamilnadu'),
 (1008,'diviya','diviya@gmail.com',9876578906,'tanjavur,Tamilnadu'),
 (1009,'arjun','rjun@gmail.com',1234567470,'vellore,Tamilnadu'),
 (1010,'sanjay','sanjay@gmail.com',1234563210,'erode,Tamilnadu');

CREATE TABLE orders(
 order_id INT PRIMARY KEY,
 customer_id INT ,
 order_date DATE,
 total_amount DOUBLE (5,2),
 FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
 );
 INSERT INTO orders VALUES (2001,1001,'2024-03-25',150.00),
 (2002,1002,'2024-03-25',200.00),
 (2003,1003,'2024-03-26',75.25),
 (2004,1001,'2024-03-27',100.75),
 (2005,1002,'2024-03-27',300.00),
 (2006,1003,'2024-03-28',50.20),
 (2007,1004,'2024-03-28',175.50),
 (2008,1004,'2024-03-29',125.75),
 (2009,1005,'2024-03-29',90.25),
 (2010,1005,'2024-03-30',180.00);
 SELECT * FROM customers;
 SELECT * FROM orders;

 SELECT customers.customer_id,customers.cname,customers.email,customers.phoneno,customers.address FROM customers
 INNER JOIN orders ON customers.customer_id=orders.customer_id GROUP BY customer_id ; 

 SELECT customers.customer_id,customers.cname,customers.email,customers.phoneno,customers.address FROM customers
 LEFT JOIN orders ON customers.customer_id=orders.customer_id GROUP BY customer_id ; 


 SELECT * FROM customers WHERE address LIKE '%ma%'; 

 SELECT * FROM orders WHERE order_date>= '2024-03-26' AND total_amount>=100;

SELECT order_id ,customer_id , order_date , total_amount FROM  orders WHERE order_date in 
 (SELECT order_date FROM orders WHERE customer_id=(SELECT customer_id FROM customers WHERE cname='ajith')); 	