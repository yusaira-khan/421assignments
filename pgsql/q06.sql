select AVG(e.monthlypayscale),d.deptname 
FROM employee e right outer join department d 
on e.deptid=d.deptid 
GROUP BY d.deptid;
