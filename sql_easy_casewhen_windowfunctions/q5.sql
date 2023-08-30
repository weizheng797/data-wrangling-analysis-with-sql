# 5. retrieve the employees who are the top salary earner in each department 
#    along with the department average salary

select t.employee_name, t.department, t.salary, round(avg_of_dpt) as avg_of_dpt 
from(
	select concat(a.EmpLname, ' ', a.EmpFname) as employee_name, a.department, b.Salary,
		avg(b.Salary) over (partition by a.department) as avg_of_dpt,
		row_number() over (partition by a.department order by b.Salary desc) as row_num
	from EmployeeInfo a inner join EmployeePosition b
	on a.EmpID = b.EmpID) t 
where t.row_num = 1 order by avg_of_dpt desc