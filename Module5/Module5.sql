 -- select * from facility;
-- select * from eventrequest;
-- select * from eventplan;
-- select * from employee;
-- select * from eventplanline;
-- select * from location;





-- SELECT Statement Problems

-- select er.eventno, dateheld, count(ep.eventno) 
-- from eventrequest er inner join eventplan ep
-- on er.eventno = ep.eventno
-- where dateheld like '2018-12-%'
-- group by ep.eventno;

-- select planno, ep.eventno, dateheld 
-- from eventplan ep inner join eventrequest er
-- on ep.eventno = er.eventno
-- inner join facility f 
-- on f.facno=er.facno
-- where dateheld like '2018-12-%' and facname='Basketball arena';

-- select er.eventno, dateheld, status, estcost
-- from eventrequest er 
-- inner join eventplan ep on ep.eventno = er.eventno 
-- inner join employee e on e.empno=ep.empno
-- inner join facility f on f.facno=er.facno
-- where empname = 'Mary Manager' and facname='Basketball arena'
-- and dateheld between '2018-10-01' and '2018-12-31';

-- select epl.planno, epl.lineno, epl.resno, numberfld, locname,timestart,timeend 
-- from eventplanline epl 
-- join location l on epl.locno=l.locno
-- join facility f on f.facno=l.facno
-- join eventplan ep on epl.planno=ep.planno
-- join eventrequest er on ep.eventno = er.eventno 
-- where facname='Basketball arena'
-- and activity='Operation'
-- and dateheld between '2018-10-01' and '2018-12-31';








-- Database Modification Problems


-- insert into facility values('F104','Swimming Pool');

-- INSERT INTO location VALUES('L107','F104','Door');

-- INSERT INTO location VALUES('L108','F104','Locker Room');

 -- update location set locname='Gate' where locno='L107';
 
 -- delete from location where locno='L108';









 
 -- SQL Statements with Errors and Poor Formatting
 
-- SELECT eventrequest.eventno, dateheld, status, estcost
-- FROM eventrequest, employee, facility, eventplan
-- WHERE estaudience > 5000
--   AND eventrequest.eventno=eventplan.eventno
--   AND eventplan.empno = employee.empno 
--   AND eventrequest.facno = facility.facno
--   AND facname = 'Football st
--   AND empname = 'Mary Manager'
 

-- SELECT DISTINCT eventrequest.eventno, dateheld, status, estcost
-- FROM eventrequest, eventplan
-- WHERE estaudience > 4000
--   AND eventplan.eventno = eventrequest.eventno 

-- SELECT DISTINCT eventrequest.eventno, dateheld, status, estcost
-- FROM eventrequest,facility
-- WHERE estaudience > 5000
--   AND eventrequest.facno = facility.facno
--   AND facname = 'Football stadium';


-- SELECT DISTINCT eventrequest.eventno, dateheld, status, estcost
-- FROM eventrequest, employee, eventplan
-- WHERE estaudience BETWEEN 5000 AND 10000
--   AND eventplan.empno = employee.empno 
--   AND eventrequest.eventno = eventplan.eventno
--   AND empname = 'Mary Manager'


-- SELECT eventplanline.planno, lineno, resname, numberfld, timestart, timeend
-- FROM eventrequest, facility, eventplan, eventplanline, resourcetbl
-- WHERE eventplanline.resno = resourcetbl.resno
-- AND eventplan.planno = eventplanline.planno
-- AND eventrequest.eventno = eventplan.eventno 
-- AND eventrequest.facno = facility.facno
-- AND estaudience = '10000'
-- AND facname = 'Basketball arena' ;













