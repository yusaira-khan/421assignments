select e.*, totcom from  employee e inner join(SELECT empid,sum(commamount) as totcom  from commission
where date_part('month',commdate) = 8 and date_part('year',commdate) = 15
group by empid
) c on e.empid = c.empid
order by totcom desc, empid;
