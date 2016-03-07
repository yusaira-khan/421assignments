select m.empname as mgrname, e.empid,e.empname, e.joindate,e.birthdate,e.deptid from employee  e
inner join employee m on e.mgrid = m.empid
where e.joindate > (current_date - INTERVAL '1 year') 
and e.birthdate < (current_date - INTERVAL '40 years') 
and e.empid in (select ee.empid from employee ee
where ee.deptid in 
(select de.deptid from employee de 
group by de.deptid 
having count(*) > 5)
order by mgrname,e.empid
)



; 
