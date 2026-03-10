--Uid =25MCI10054
--name=Suyash

--Question 2 

select salary as secondHighestSalary
from Employee
order by salary desc
limit 1 offset 1

--table creation 
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);
INSERT INTO Employee VALUES
(1, 'Amit', 120000),
(2, 'Ravi', 80000),
(3, 'Neha', 82000),
(4, 'Karan', 60000),
(5, 'Simran', 62000),
(6, 'Pooja', 61000),
(7, 'Rahul', 64000),
(8, 'Arjun', 70000);

