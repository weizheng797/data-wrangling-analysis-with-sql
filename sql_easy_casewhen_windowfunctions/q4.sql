# 4. find the project on which the most full time staff salary is being spent 
#.   and the number of staff allocated on it

select a.Project, sum(b.Salary) as ProSa, count(*) as '#allocate'
from EmployeeInfo a inner join EmployeePosition b
on a.EmpID = b.EmpID
group by a.Project order by ProSa desc
limit 1;