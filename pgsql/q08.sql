
 select department.deptname, employee.workcity, count(*) as empcnt
from employee inner join department 
on employee.deptid=department.deptid 
where employee.workcity is not null 
group by department.deptname,employee.workcity 
order by empcnt Desc, department.deptname,employee.workcity;

