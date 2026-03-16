# Write your MySQL query statement below
with cte as(select 
    d.name AS Department
    ,e.name as Employee
    ,e.salary AS Salary
    ,DENSE_RANK() over (partition by d.name order by e.salary desc) as rank_num
from Employee e
inner join Department d
on e.departmentId =d.id
)
select Department,Employee,Salary
from cte where rank_num<=3
Order by Department,rank_num 


