select d.Deptname from Department d where d.deptid not in
(select e.deptid from Employee e where workcity is not null)
order by d.deptname;

