--Database
create database batch12

--Use Database
use batch12

--Schema
create schema b12

--Table
create table student
(
 roll int,
 stdName varchar(20),
 Addr varchar(30),
 age int
);

insert into student(roll, stdName, Addr, age) values(1,'deepak','Mumbai',16),
(1,'deepak','Mumbai',16),
(1,'deepak','Mumbai',16),
(1,'deepak','Mumbai',16),
(1,'deepak','Mumbai',16)


insert into student values(1,'deepak','Mumbai',16),
(2,'deepak','Mumbai',16),
(3,'deepak','Mumbai',16),
(4,'deepak','Mumbai',16),
(5,'deepak','Mumbai',16)

insert into student(roll, stdName, age) values(1,'deepak',16)

insert into student(stdName,roll, age) values('deepak',1,16)

insert into student(roll, stdName,addr, age) values(1,'deepak','',16)

--View the table
select * from student
--Distinct on complete table
select distinct * from student
--Null/blank
select * from student where addr is NULL
select * from student where addr is not NULL
select * from student where addr = ''

--update
update student 
set Addr = 'Delhi' where Addr = ''

--Delete
Delete from Student where Addr = 'Delhi'

--delete all record from table
truncate table student

create table b12.student
(
 roll int,
 stdName varchar(20),
 Addr varchar(30),
 age int
);

--View the table
select * from b12.student


--Create Database

create database W3Schools

select * from categories

select * from customers where country = 'UK'

select * from customers where country = 'UK' OR  country = 'France' OR country = 'Mexico'

select * from customers where country in ('UK','France','Mexico')

select * from customers where country = 'UK' AND city = 'London'

select * from customers where customerName like '%''%'

select * from customers order by contactName asc
select * from customers order by contactName desc
select * from customers order by CustomerName asc, contactName desc

select * from customers

Select Distinct country from customers

Select count(Distinct country) from customers

select * from customers where country in ('USA')

--Method1
select * from customers where country not in ('USA')
--Method2
select * from customers where not country  in ('USA')
--Method3
select * from customers where country <> 'USA'
--Method4
select * from customers where country != 'USA'
--Method5
select * from customers where Not country = 'USA'

--Aggregate Function (Min/Max/Sum/Avg/Count)

select * from products

select min(price) MinimumPrice from products
select min(price) as MinimumPrice from products

select min(price) as 'Minimum Price' from products
select max(price) as 'Maximum Price' from products
select avg(price) as 'Average Price' from products
select sum(price) as 'Average Price' from products
select count(productname) as 'Count of Product' from products

--Between
select * from products where price between 10 and 15


--Join
create table student1
(
 ID int,
 Name varchar(20),
 Addr varchar(30)
);

create table Class
(
 ID int,
 Class varchar(20),
 Section varchar(30)
);


insert into student1 values(1,'a','Patna'),
(2,'b','Delhi'),
(3,'c','bombay'),
(4,'d','Punjab'),
(5,'e','Patna')

insert into class values(4,5,'c'),
(5,2,'a'),
(6,6,'a'),
(7,7,'b'),
(8,1,'a')

select student1.id as Std_ID,student1.name,student1.addr,class.id as class_ID,class.class,class.section from student1
Inner Join
class on student1.id = class.id

select student1.id as Std_ID,student1.name,student1.addr,class.id as class_ID,class.class,class.section from student1
Left Join
class on student1.id = class.id

select student1.id as Std_ID,student1.name,student1.addr,class.id as class_ID,class.class,class.section from student1
Right Join
class on student1.id = class.id

select student1.id as Std_ID,student1.name,student1.addr,class.id as class_ID,class.class,class.section from student1
Full Outer Join
class on student1.id = class.id

--Group By
select * from customers

select country,count(country) as No_of_cust from customers group by country order by No_of_cust desc

--Having
select country,count(country) as No_of_cust from customers group by country having count(country) > 10 

--Select Into
select * into cust_usa
from customers where country = 'USA'
select * from cust_usa

select * into cust_uk
from customers where 1=2
select * from cust_uk

select * into cust_france
from customers
--OR 
select * into cust_france
from customers where 1=1

--insert into select
insert into cust_uk
select * from customers where country = 'UK'

select * from cust_uk

--Case
select * from products

select productID,productName,SupplierID,CategoryID,Unit,Price,
CASE
 when price >= 1 and price <=10 then 'Low'
 when price >= 11 and price <=20 then 'Medium'
 else 'High'
End As Range
from Products

--Constraint
----Not Null
----Unique
----Primary Key
----Foreign Key
----Check
----Default

--***Not Null
create table admission
(
  std_id int not null,
  std_name varchar(20) not null,
  std_add varchar(30),
  std_age int not null
)

insert into admission(std_id,std_name,std_add,std_age) values(1,'Ravnish','Punjab','16')

drop table admission

--***Unique
create table admission
(
  std_id int Unique,
  std_name varchar(20) not null,
  std_add varchar(30),
  std_age int not null
)

select * from admission

insert into admission(std_id,std_name,std_add,std_age) values(1,'Ravnish','Punjab','16')
insert into admission(std_id,std_name,std_add,std_age) values(2,'Jagdeesh','Punjab','16')
insert into admission(std_id,std_name,std_add,std_age) values(3,'Sandeep','Punjab','16')


--***Primary Key
create table admission
(
  std_id int Primary Key,
  std_name varchar(20) not null,
  std_add varchar(30),
  std_age int not null
)

insert into admission(std_id,std_name,std_add,std_age) values('','Ravnish','Punjab','16')
insert into admission(std_id,std_name,std_add,std_age) values(3,'Ravnish','','16')
select * from admission

Truncate table admission
drop table admission
---Foreign Key

create table Student3
(
  std_id int,
  std_roll int primary key,
  std_class varchar(20),
  std_sec varchar(2),
  foreign key (std_id) references admission(std_id) 
)

insert into Student3(std_id,std_roll,std_class,std_sec) values(0,101,'Three','A')
select * from student3
drop table student3

--check
create table admission
(
  std_id int Primary Key,
  std_name varchar(20) not null,
  std_add varchar(30),
  std_age int not null,
  check(std_age >= 5)
)

insert into admission(std_id,std_name,std_add,std_age) values(1,'Ravnish','Punjab',5)

--Default
create table admission
(
  std_id int Primary Key,
  std_name varchar(20) not null,
  std_add varchar(30) default 'Hyderabad',
  std_age int not null,
  check(std_age >= 5)
)

insert into admission(std_id,std_name,std_add,std_age) values(2,'Ravnish','Punjab',5)
select * from admission


----Auto Increment

create table admission1
(
 id int identity(101,1),
 std_name varchar(20),
 std_addr varchar(30),
 std_age  int
)
drop table admission1

insert into admission1(std_name,std_addr,std_age) values('Shashi','Hyderabad',16)

SET IDENTITY_INSERT admission1 ON --Then only you can insert value in identity column
SET IDENTITY_INSERT admission1 OFF --You can't insert value in identity column, it will automatically populate

insert into admission1(std_name,std_age) values('Ram',16)
select * from admission1


---Coalesce

update admission1
set std_addr = '' where id  in (101,103,107)

update admission1
set std_addr = 'Patna' where isnull(std_addr,'')=''

select * from admission1

select id, std_name,coalesce(std_addr,'Patna') as std_address,std_age from admission1


---Index
create index admission1_index
on admission1(id)

drop index admission1.admission1_index
---View
create view us_customer as
select CustomerName,Address,Country from customers where country  = 'USA'

select * from us_customer

---Stored Procedure
--static
create procedure us_customer1 as
select CustomerName,Address,Country from customers where country  = 'USA'
execute us_customer1

create proc us_customer2 as
select CustomerName,Address,Country from customers where country  = 'USA'
exec us_customer2

--Dynamic
create proc allcust @cust_country varchar(20) as 
select CustomerName,Address,Country from customers where country  = @cust_country

exec allcust @cust_country = 'USA'

---Alter
create table admission1
(
 id int,
 std_name varchar(20),
 std_addr varchar(30),
 std_age  int
)
select * from admission1
--Add Column
alter table admission1
add mob varchar(15)

--Drop Column
alter table admission1
drop column mob

--Rename Column
exec sp_rename 'admission1.std_addr','std_addrs','column'

--Alter Column type
alter table admission1
alter column std_addrs varchar(300)

