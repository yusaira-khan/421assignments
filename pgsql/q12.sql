select empname from employee where  empid in 
(select mgrid from employee where workcity='Montreal' group by mgrid having  count(*) >= 3
intersect
select mgrid from employee where workcity='Toronto' group by mgrid having  count(*) >= 5 
intersect
select mgrid from employee where workcity is null  group by mgrid having  count(*) >= 2)
order by empname;
