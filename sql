create database dates;
use dates;
CREATE TABLE employee (
emp_id INT PRIMARY KEY,
ename VARCHAR(30),
job_desc VARCHAR(20),
salary INT );

INSERT INTO employee VALUES(1,'Ram','ADMIN',1000000);
INSERT INTO employee VALUES(2,'Harini','MANAGER',2500000);
INSERT INTO employee VALUES(3,'George','SALES',2000000);
INSERT INTO employee VALUES(4,'Ramya','SALES',1300000);
INSERT INTO employee VALUES(5,'Meena','HR',2000000);
INSERT INTO employee VALUES(6,'Ashok','MANAGER',3000000);
INSERT INTO employee VALUES(7,'Abdul','HR',2000000);
INSERT INTO employee VALUES(8,'Ramya','ENGINEER',1000000);
INSERT INTO employee VALUES(9,'Raghu','CEO',8000000);
INSERT INTO employee VALUES(10,'Arvind','MANAGER',2800000);
INSERT INTO employee VALUES(11,'Akshay','ENGINEER',1000000);
INSERT INTO employee VALUES(12,'John','ADMIN',2200000);
INSERT INTO employee VALUES(13,'Abinaya','ENGINEER',2100000);


select * from employee;



ALTER TABLE employee ADD COLUMN Hire_Date DATE;
UPDATE  employee
SET Hire_Date="2012-10-05";


SELECT NOW() as currentdate;

SELECT DATE(NOW()) as currentdate; 
SELECT CURDATE();
SELECT DATE_FORMAT(CURDATE(),'%d/%m/%y');

SELECT DATEDIFF(CURDATE(),'2023-07-05') week;


SELECT CURDATE() 'start date',
 DATE_ADD(CURDATE(),INTERVAL 1 DAY) 'one day later',
 DATE_ADD(CURDATE(),INTERVAL 1 WEEK) 'one week later',
 DATE_ADD(CURDATE(),INTERVAL 1 MONTH) 'one month later',
 DATE_ADD(CURDATE(),INTERVAL 1 YEAR) 'one year later';


SELECT job_desc,COUNT(emp_id) count
FROM employee
GROUP BY job_desc; 


SELECT job_desc,COUNT(emp_id) AS count -- using as for aliasing
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1;

SELECT job_desc,COUNT(emp_id) AS count
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1
ORDER BY job_desc;


SELECT job_desc,COUNT(emp_id) AS count
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1
ORDER BY COUNT(emp_id) desc ;

SELECT job_desc,COUNT(emp_id) AS count
FROM employee
WHERE salary>1500000
GROUP BY job_desc
HAVING COUNT(emp_id)>1
ORDER BY COUNT(emp_id) DESC; 


drop table employee;

CREATE TABLE employee (
emp_id INT PRIMARY KEY AUTO_INCREMENT, -- id will be auto incremented for new rows
ename VARCHAR(30) NOT NULL, -- null value cannot be inserted for the column
job_desc VARCHAR(20) DEFAULT 'unassigned', -- sets default when not mentioned
salary INT,
pan VARCHAR(10) UNIQUE,-- cannot contain duplicates
CHECK (salary>100000)); 

INSERT INTO employee(ename,salary) VALUES ('Ramya',1000000);
INSERT INTO employee(ename,salary) VALUES ('Ravi',100000);

select * from employee;










