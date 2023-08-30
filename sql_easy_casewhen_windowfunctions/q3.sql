# 3. find average salary and number of employees by Employee Position

select EmpPosition, count(*) as employee_count, floor(avg(Salary)) as average_salary
from EmployeePosition group by EmpPosition order by employee_count