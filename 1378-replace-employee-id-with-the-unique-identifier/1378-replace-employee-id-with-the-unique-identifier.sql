# Write your MySQL query statemen
SELECT u.unique_id ,e.name
from Employees e
left join employeeUNI u
on e.id=u.id