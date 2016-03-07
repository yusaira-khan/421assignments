Select e.*  from Employee e inner join
(select empid from Employee where Empname='Thomas McCarthy') m on e.mgrid = m.empid;

