# 1. find duplicated entries in EmployeeInfo

select EmpFname, EmpLname, count(*) as count
from EmployeeInfo group by EmpFname, EmpLname
having count > 1