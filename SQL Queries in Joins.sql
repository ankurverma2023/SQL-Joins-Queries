--SQL Queries in Joins
--The SQL JOIN is a command clause that combines records from two or more tables in a database,
--It is a means of combining data in fields from two tables by using values common to each table.

create database Professor
use professor

--Table 1 Student
create table student
(
id int primary key IDENTITY,
admission_no varchar(45),
first_name varchar(45),
last_name varchar(45),
age int,
city varchar(25)
)
Insert into student values(3354,'Luisa','Evans',13,'Texas')
Insert into student values(2135,'Paul', 'Ward', 15, 'Alaska'),
(4321,'peter','Bennett', 14, 'California'),
(4213, 'Carlos', 'Patterson', 17, 'New York'),
(5112, 'Rose', 'Huges', 16, 'Florida'),
(6113, 'Marielia', 'Simmons', 15, 'Arizona'),
(7555, 'Antonio', 'Butler', 14, 'New York'),
(8345, 'Diego', 'Cox', 13, 'California')

select * from student 

--Table 2 fee
create table fee
(
admission_no varchar(45),
course varchar(45),
amount_paid int
)
Insert into fee values(3354,'Java', 20000)
Insert into fee values(7555,'Andorid', 22000),
(4321,'Python', 18000),
(8345, 'SQL', 15000),
(5112, 'Machine Learning', 30000)

select * from fee
-------------------------------------------------------------------------------------------------------
--Inner Join
--Returns only the rows where there is a match in both tables based on the specified condition
SELECT student.admission_no,student.first_name,student.last_name,fee.course,fee.amount_paid
from student
INNER JOIN fee
ON student.admission_no = fee.admission_no
--------------------------------------------------------------------------------------------------------
--Left Outer Join
--Returns all rows from the left table and the matched rows from the right table,
--If there is no match, NULL values are returned for columns from the right table
SELECT student.admission_no,student.first_name,student.last_name,fee.course,fee.amount_paid
from student
LEFT OUTER JOIN fee
ON student.admission_no = fee.admission_no
---------------------------------------------------------------------------------------------------------
--Right Outer Join
--Returns all rows from the right table and the matched rows from the left table,
--If there is no match, NULL values are returned for columns from the left table.
SELECT student.admission_no,student.first_name,student.last_name,fee.course,fee.amount_paid
from student
RIGHT OUTER JOIN fee
ON student.admission_no = fee.admission_no
----------------------------------------------------------------------------------------------------------
--FULL Outer Join 
--Returns all rows when there is a match in either the left or right table,
-- If there is no match, NULL values are returned for columns from the table without a match.
SELECT student.admission_no,student.first_name,student.last_name,fee.course,fee.amount_paid
from student
FULL OUTER JOIN fee
ON student.admission_no = fee.admission_no
