# Write your MySQL query statement below
select Department.name as Department,
Employee.name as Employee, 
Employee.salary as Salary 
from Employee
inner join Department
on Employee.departmentId = Department.id
where (salary, departmentId) IN
(select max(salary), departmentId from Employee 
group by departmentId)
