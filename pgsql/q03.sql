Select e.empid,e.empname from Employee e inner join
(select empid from Employee where WorkCity != 'Montreal') m on e.mgrid = m.empid
order by e.empname;

