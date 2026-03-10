# 25MCI10054_Suyash_25MAM_KAR-1_DBMS
DBMS Practical MST-1

## Q1: Write a SQL query to find all unique pairs of employees who report to the same manager.

```sql
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT,
    department VARCHAR(50),
    salary INT
);
INSERT INTO Employees VALUES
(1, 'Amit', NULL, 'Management', 120000),
(2, 'Ravi', 1, 'Engineering', 80000),
(3, 'Neha', 1, 'Engineering', 82000),
(4, 'Karan', 2, 'Engineering', 60000),
(5, 'Simran', 2, 'Engineering', 62000),
(6, 'Pooja', 3, 'Engineering', 61000),
(7, 'Rahul', 3, 'Engineering', 64000),
(8, 'Arjun', 1, 'HR', 70000);


--- Question 1
SELECT e1.manager_id , e1.emp_name AS employee_1, 
	e2.emp_name AS employee_2
FROM Employees e1
JOIN Employees e2
ON e1.manager_id = e2.manager_id
AND e1.emp_id < e2.emp_id
WHERE e1.manager_id IS NOT NULL;


```

<img width="538" height="210" alt="image" src="Question1 Output.jpg" />

## Q2: Write an SQL query to find the second highest salary from an Employee table
### using the table employees from Q1
```sql
select salary as secondHighestSalary
from Employee
order by salary desc
limit 1 offset 1;
```
<img width="227" height="82" alt="image" src="Question2 Output.jpg" />
