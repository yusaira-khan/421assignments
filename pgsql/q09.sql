select department.deptname,  count(*) as empcnt
from employee inner join department 
on employee.deptid=department.deptid 
where empcnt > 10 
group by department.deptname
order by  department.deptname;

