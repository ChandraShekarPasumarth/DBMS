use IntercollegiateAthletic;
-- 1
select distinct city,state,zip from CUSTOMER;

-- 2
select Empname,department,phone,email from EMPLOYEE
where phone like '3-%';

-- 3
select * from RESOURCETBL
	where rate between '$10' and '$20'
    order by rate;

-- 4
select  EventNo,Dateauth,Status
	  from EVENTREQUEST
where Status in('Approved','Denied')
and Extract(Month from dateauth)=7;

-- 5
select LocNo,LocName from LOCATION where FacNo in(select FacNo from FACILITY where FacName like 'Basketball arena');

-- 6
select Planno,count(Lineno),sum(Resno) from EVENTPLANLINE group by Planno having count(Lineno)>=1;
