
use training;

-- Numerical functions

select * from employee;
-- Maximum/Minimum salary details

select max(salary) from employee;
select min(salary) from employee;
select avg(salary) from employee;
select sum(salary) from employee;
select count(*) from employee;
select std(salary) from employee;
select stddev(salary) from employee;

-- String functions
	-- concat (concatenate 2 strings)

select * from customer;
select concat(custname,' - ',city,' ', 'Excelr') as customer_info from customer;
select concat_ws('-',custname, city, 'Excelr') as custo_info from customer;

	-- Length
select custname from customer;
select custname, length(custname) as length from customer;

	-- Lower Case
select lower(custname) from customer;

	-- Upper Case
select upper(custname) from customer;

	-- Replace
select replace(custname,'a','A') from customer;

	-- Substring 
select substr(custname,1,5) from customer;

	-- Trim (removing space from forward or backward)
select trim(' Excelr ') from dual;

	-- Lpad and Rpad
select lpad(custname,10,'*') from customer;
select rpad(custname,10,'*') from customer;

	-- Substring_index
select substring_index(substring_index('ABCD@gmail.com','@',-1),'.',1) as domain from dual;

	-- Cast
select cast(custid as char(4))as new_id from customer;
select * from customer;

-- Date functions
-- %a  -> abbreviated weekday (sun,Mon,Tues...)
-- %W  -> weekday (sunday,monday,....,saturday)
-- %b  -> abbreviated month name (Jan,Feb, Mar....)
-- %c  -> month in numeric (1,2,3....,12)
-- %d  -> day in numeric (1,2,3....,31)
-- %D  -> day of month in english suffix (1,2,....12)
-- %y  -> year in 2 digits (20,21,22)
-- %Y  -> year in 4 digits (2022,2020,2021)
-- %H  -> Hours in 24 hr. format
-- %I  -> Hours in 12 hr. format
-- %p  -> AM | PM
-- %i  -> Minutes (00,....59)
-- %S  -> Seconds (00,....59)

select curdate();
select date_format(curdate(),'%d-%b-%Y');
select date_format(curdate(),'%c/%d/%Y');
select date_format(current_timestamp(),'%W,%D %M %Y, %I:%i %p');
select date_format(current_timestamp(),'%W,%D %M %Y, %H:%i');
drop table cust_date;
create table cust_date (custid int, custname varchar(30), city varchar(30), registered_year year);
insert into cust_date values (1000, 'Ashu', 'Mumbai', 2020);
insert into cust_date values (1001, 'Shubham' ,'Pune',2022),(1002, 'Rishabh','Nagpur',2017),(1003,'Shannik','Nagpur',2015);
select * from cust_date;
insert into cust_date values (1010, 'Ashi', 'Mumbai', 2020);
select * from cust_date where registered_year = 2020;
