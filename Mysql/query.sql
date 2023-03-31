-- 1.Write a MySQL command to create a new database called
-- Hospital management.
query:create database hospitalmanagement;

-- 2.Write a MySQL command to create a new table called
-- employees with three columns: id (integer, primary key),
-- name (varchar), and age (integer).
query:create table employee(emp_id int primary key,name varchar(100),age int);

-- 3. Write a MySQL command to insert a new record into the
-- employees table with the following values: id=1,
-- name='John Doe', age=30.
query:insert into employee values(1,"John Doe",30);

-- 4. Write a MySQL command to retrieve all the data from the
-- employees table.
query:select * from employee;

-- 5. Write a MySQL command to retrieve the names and ages of
-- all the employees in the employees table.
query:select name,age from employee;

-- 6. Write a MySQL command to update the age of the employee
-- with id=1 to 35.
query:update employee set age = 35 where emp_id = 1;

-- 7. Write a MySQL command to delete the employee with id=1
-- from the employees table.
query:delete from employee where emp_id =1;

-- 8. Write a MySQL command to drop the employees table.
query:drop table employee;

-- 9. Write a MySQL command to drop the Hospital Management
-- database.
query:drop database hospitalmanagement;












-- //Create a Table with a primary key column

CREATE TABLE departments
    ( department_id INTEGER PRIMARY KEY
    , department_name VARCHAR(30)
    , location_id INTEGER
    );



-- //Create a Table with a Foreign Key

CREATE TABLE employees
   ( employee_id INTEGER
   , first_name VARCHAR(20)
   , last_name VARCHAR(25) 
   , email VARCHAR(25)
   , phone_number VARCHAR(20)
   , hire_date DATE
   , job_id VARCHAR(10)
   , salary INTEGER
   , commission_pct INTEGER
   , manager_id INTEGER
   , department_id INTEGER
   , constraint pk_emp primary key (employee_id) 
   , constraint fk_deptno foreign key (department_id) references departments(department_id)  
   ) ; 






--    Insert Records into Tables
-- ## Insert insto Departments table
 INSERT INTO departments VALUES ( 20,'Marketing',  180);
 INSERT INTO departments VALUES ( 30,'Purchasing',  1700);
 INSERT INTO departments VALUES ( 40, 'Human Resources',  2400);
 INSERT INTO departments VALUES ( 50, 'Shipping',  1500);
 INSERT INTO departments VALUES ( 60 , 'IT',  1400);
 INSERT INTO departments VALUES ( 70, 'Public Relations',  2700);
 INSERT INTO departments VALUES ( 80 , 'Sales',  2500 );
 INSERT INTO departments VALUES ( 90 , 'Executive',  1700);
 INSERT INTO departments VALUES ( 100 , 'Finance',  1700);
 INSERT INTO departments VALUES ( 110 , 'Accounting',  1700);
 INSERT INTO departments VALUES ( 120 , 'Treasury' ,  1700);
 INSERT INTO departments VALUES ( 130 , 'Corporate Tax' ,  1700 );
 INSERT INTO departments VALUES ( 140, 'Control And Credit' ,  1700);
 INSERT INTO departments VALUES ( 150 , 'Shareholder Services', 1700);
 INSERT INTO departments VALUES ( 160 , 'Benefits', 1700);
 INSERT INTO departments VALUES ( 170 , 'Payroll' , 1700);


-- ## Insert into Employees table
INSERT INTO employees VALUES (100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17' , 'AD_PRES', 24000 , NULL, NULL, 20);
INSERT INTO employees VALUES (101, 'Neena' , 'Kochhar' , 'NKOCHHAR' , '515.123.4568' , '1989-11-21' , 'AD_VP' , 17000 , NULL , 100 , 20);
INSERT INTO employees VALUES (102 , 'Lex' , 'De Haan' , 'LDEHAAN' , '515.123.4569' , '1993-09-12' , 'AD_VP' , 17000 , NULL , 100 , 30);
INSERT INTO employees VALUES (103 , 'Alexander' , 'Hunold' , 'AHUNOLD' , '590.423.4567' , '1990-09-30', 'IT_PROG' , 9000 , NULL , 102 , 60);
INSERT INTO employees VALUES (104 , 'Bruce' , 'Ernst' , 'BERNST' , '590.423.4568' , '1991-05-21',  'IT_PROG' , 6000 , NULL , 103 , 60);
INSERT INTO employees VALUES (105 , 'David' , 'Austin' , 'DAUSTIN' , '590.423.4569' , '1997-06-25',  'IT_PROG' , 4800 , NULL , 103 , 60);
INSERT INTO employees VALUES (106 , 'Valli' , 'Pataballa' , 'VPATABAL' , '590.423.4560' , '1998-02-05',  'IT_PROG' , 4800 , NULL , 103 , 40);
INSERT INTO employees VALUES (107 , 'Diana' , 'Lorentz' , 'DLORENTZ' , '590.423.5567' , '1999-02-09',  'IT_PROG' , 4200 , NULL , 103 , 40);
INSERT INTO employees VALUES (108 , 'Nancy' , 'Greenberg' , 'NGREENBE' , '515.124.4569' , '1994-08-17',  'FI_MGR' , 12000 , NULL , 101 , 100);
INSERT INTO employees VALUES (109 , 'Daniel' , 'Faviet' , 'DFAVIET' , '515.124.4169' , '1994-08-12',  'FI_ACCOUNT' , 9000 , NULL , 108 , 170);
INSERT INTO employees VALUES (110 , 'John' , 'Chen' , 'JCHEN' , '515.124.4269' , '1997-04-09',  'FI_ACCOUNT' , 8200 , NULL , 108 , 170);
INSERT INTO employees VALUES (111 , 'Ismael' , 'Sciarra' , 'ISCIARRA' , '515.124.4369' , '1997-02-01',  'FI_ACCOUNT' , 7700 , NULL , 108 , 160);
INSERT INTO employees VALUES (112 , 'Jose Manuel' , 'Urman' , 'JMURMAN' , '515.124.4469' , '1998-06-03', 'FI_ACCOUNT' , 7800 , NULL , 108 , 150);
INSERT INTO employees VALUES (113 , 'Luis' , 'Popp' , 'LPOPP' , '515.124.4567' , '1999-12-07',  'FI_ACCOUNT' , 6900 , NULL , 108 , 140);
INSERT INTO employees VALUES (114 , 'Den' , 'Raphaely' , 'DRAPHEAL' , '515.127.4561' , '1994-11-08',  'PU_MAN' , 11000 , NULL , 100 , 30);
INSERT INTO employees VALUES (115 , 'Alexander' , 'Khoo' , 'AKHOO' , '515.127.4562' , '1995-05-12',  'PU_CLERK' , 3100 , NULL , 114 , 80);
INSERT INTO employees VALUES (116 , 'Shelli' , 'Baida' , 'SBAIDA' , '515.127.4563' ,'1997-12-13', 'PU_CLERK' , 2900 , NULL , 114 , 70);
INSERT INTO employees VALUES (117 , 'Sigal' , 'Tobias' , 'STOBIAS' , '515.127.4564' , '1997-09-10', 'PU_CLERK' , 2800 , NULL , 114 , 30);
INSERT INTO employees VALUES (118 , 'Guy' , 'Himuro' , 'GHIMURO' , '515.127.4565' , '1998-01-02',  'PU_CLERK' , 2600 , NULL , 114 , 60);
INSERT INTO employees VALUES (119 , 'Karen' , 'Colmenares' , 'KCOLMENA' , '515.127.4566' , '1999-04-08',  'PU_CLERK' , 2500 , NULL , 114 , 130);
INSERT INTO employees VALUES (120 , 'Matthew' , 'Weiss' , 'MWEISS' , '650.123.1234' ,'1996-07-18',  'ST_MAN' , 8000 , NULL , 100 , 50);
INSERT INTO employees VALUES (121 , 'Adam' , 'Fripp' , 'AFRIPP' , '650.123.2234' , '1997-08-09',  'ST_MAN' , 8200 , NULL , 100 , 50);
INSERT INTO employees VALUES (122 , 'Payam' , 'Kaufling' , 'PKAUFLIN' , '650.123.3234' ,'1995-05-01',  'ST_MAN' , 7900 , NULL , 100 , 40);
INSERT INTO employees VALUES (123 , 'Shanta' , 'Vollman' , 'SVOLLMAN' , '650.123.4234' , '1997-10-12',  'ST_MAN' , 6500 , NULL , 100 , 50);
INSERT INTO employees VALUES (124, 'Kevin' , 'Mourgos' , 'KMOURGOS' , '650.123.5234' , '1999-11-12',  'ST_MAN' , 5800 , NULL , 100 , 80);
INSERT INTO employees VALUES (125, 'Julia' , 'Nayer' , 'JNAYER' , '650.124.1214' , '1997-07-02',  'ST_CLERK' , 3200 , NULL , 120 , 50);
INSERT INTO employees VALUES (126, 'Irene' , 'Mikkilineni' , 'IMIKKILI' , '650.124.1224' , '1998-11-12', 'ST_CLERK' , 2700 , NULL , 120 , 50);
INSERT INTO employees VALUES (127, 'James' , 'Landry' , 'JLANDRY' , '650.124.1334' , '1999-01-02' , 'ST_CLERK' , 2400 , NULL , 120 , 90);
INSERT INTO employees VALUES (128, 'Steven' , 'Markle' , 'SMARKLE' , '650.124.1434' , '2000-03-04' , 'ST_CLERK' , 2200 , NULL , 120 , 50);
INSERT INTO employees VALUES (129, 'Laura' , 'Bissot' , 'LBISSOT' , '650.124.5234' ,'1997-09-10' , 'ST_CLERK' , 3300 , NULL , 121 , 50);
INSERT INTO employees VALUES (130, 'Mozhe' , 'Atkinson' , 'MATKINSO' , '650.124.6234' , '1997-10-12' , 'ST_CLERK' , 2800 , NULL , 121 , 110);



-- Excersise

-- 1. Select employees first name, last name, job_id and salary whose first name starts with alphabet S

--  

 SELECT first_name, last_name, job_id, salary
 FROM employees
WHERE first_name LIKE 'S%';



-- 2. Write a query to select employee with the highest salary

--  

SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);



-- 3. Select employee with the second highest salary

--  

SELECT *
FROM employees
WHERE salary = (
SELECT MAX(salary)
FROM employees
WHERE salary < (
SELECT MAX(salary)
FROM employees
 )
);




-- 4. Fetch employees with 2nd or 3rd highest salary
SELECT *
FROM employees
WHERE salary IN (
SELECT salary
FROM employees
 GROUP BY salary
 ORDER BY salary DESC
)limit 2,2;



-- 5. Write a query to select employees and their corresponding managers and their salaries

SELECT e.first_name AS employee_first_name, e.last_name AS employee_last_name,
m.first_name AS manager_first_name, m.last_name AS manager_last_name,
e.salary AS employee_salary, m.salary AS manager_salary
FROM employees e
INNER JOIN employees m ON e.manager_id = m.employee_id;



-- 6. Write a query to show count of employees under each manager in descending order


SELECT m.employee_id AS manager_id, m.first_name AS manager_first_name, m.last_name AS manager_last_name, COUNT(*) AS employee_count
FROM employees e
INNER JOIN employees m ON e.manager_id = m.employee_id
GROUP BY m.employee_id, m.first_name, m.last_name
ORDER BY employee_count DESC;


-- 7. Find the count of employees in each department

SELECT d.department_id, d.department_name, COUNT(*) AS employee_count
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_id, d.department_name;

-- 8. Get the count of employees hired year wise


SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS employee_count
FROM employees
GROUP BY YEAR(hire_date)
ORDER BY hire_year ASC;

-- 9. Find the salary range of employees

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employees;



-- 10. Write a query to divide people into three groups based on their salaries



SELECT
CASE
WHEN salary < 10000 THEN 'Low earners'
 WHEN salary >= 10000 AND salary < 20000 THEN 'Medium earners'
ELSE 'High earners'
END AS salary_group,
COUNT(*) AS employee_count
FROM employees
GROUP BY salary_group;



-- 11. Select the employees whose first_name contains “an”



SELECT * FROM employees
WHERE first_name LIKE '%an%';




-- 12. Select employee first name and the corresponding phone number in the format (_ _ _)-(_ _ _)-(_ _ _ _)



SELECT first_name,
 CONCAT('(', SUBSTR(phone_number, 1, 3), ')-', '(',SUBSTR(phone_number, 5, 3), ')-', '(',SUBSTR(phone_number, 9, 4),')') AS formatted_phone_number
FROM employees;

-- 13. Find the employees who joined in August, 1994.


SELECT * FROM employees
WHERE hire_date BETWEEN '1994-08-01' AND '1994-08-31';

-- 14. Write an SQL query to display employees who earn more than the
-- average salary in that company


SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);



-- 15. Find the maximum salary from each department.



SELECT department_id, MAX(salary) AS max_salary
FROM employees
GROUP BY department_id;



-- 16. Write a SQL query to display the 5 least earning employees

--  

SELECT * FROM employees
ORDER BY salary ASC
LIMIT 5;



-- 17. Find the employees hired in the 80s



SELECT * FROM employees
WHERE hire_date BETWEEN '1980-01-01' AND '1989-12-31';



-- 18. Display the employees first name and the name in reverse order

--  

SELECT CONCAT(last_name, ', ', first_name) AS name_reverse
FROM employees;

--  

-- 19. Find the employees who joined the company after 15th of the month

--  

SELECT * FROM employees
WHERE DAY(hire_date) > 15;



-- 20. Display the managers and the reporting employees who work in different departments

--  

SELECT m.first_name AS manager_first_name, m.last_name AS manager_last_name, e.first_name AS employee_first_name, e.last_name AS employee_last_name
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE e.department_id != m.department_id;