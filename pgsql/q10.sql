 select department.DeptName, 
(case when employee.workcity is null then 'Mobile' else 'Stationary' end) as EmpType, 
AVG(employee.monthlypayscale) as AvgMnthPay
from employee inner join department 
on employee.deptid=department.deptid 
group by department.deptname,emptype 
order by  department.deptname,emptype;

