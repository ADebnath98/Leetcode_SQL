# Write your MySQL query statement below
select D.name as Department,
E.name as Employee, 
E.Salary as Salary 
from Employee E
inner join Department D
WHERE
(SELECT COUNT(distinct Salary) 
from Employee
WHERE Salary > E.Salary
AND DepartmentId = D.Id
) < 3
AND E.departmentId = D.Id
ORDER BY D.id, E.Salary desc ;
