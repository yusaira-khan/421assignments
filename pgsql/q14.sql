select e.* from employee e left outer join 
(select c.commdate,c.empid from commission c 
where c.commdate between date '2015-08-01' and date '2015-08-31' ) a
on a.empid = e.empid 
where a.commdate is null and  e.joindate < date '2015-08-01';
