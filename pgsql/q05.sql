select e.empname, e.monthlypayscale from Employee e inner join (sELECT
       MAX(h.monthlypayscale) AS maxpay 
     FROM
      employee h
where h.workcity is not null
) s on e.monthlypayscale=s.maxpay where e.workcity is not null
order by e.empname;
