# 2. present the number of customers born in 1960s, 70s and 80s broken down by gender

select case when year(DOB)>=1960 and year(DOB)<1970 then '1960s'
	when year(DOB)>=1970 and year(DOB)<1980 then '1970s'
    when year(DOB)>=1980 and year(DOB)<1990 then '1980s'
    else null end as b_decade, Gender as gender, count(*) as number_of_Emp
from EmployeeInfo 
group by b_decade, Gender 
order by b_decade, Gender;