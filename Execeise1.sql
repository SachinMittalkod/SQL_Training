

create table Employee (EmpId int not null unique, Name varchar(20), Department varchar(23), HireDate Date, Training int)
select * from Employee

insert into Employee values (1234, 'J.Jones', 'Sales', '18/Jun/92', 24), (2345, 'S.Smith', 'Production', '12/Feb/98', 40),(3456, 'A.Adams', 'Sales', '18/Nov/98', 60),
(4567, 'B.Bates', 'Advertising', '10/Mar/85', 16),(5678, 'D.Davis', 'Production', '26/Jul/99', 56),(6789, 'C.Cole', 'Shipping', '18/May/91', 32),
(7890, 'E.Ellis', 'Sales', '15/Dec/98', 80),(8901, 'F.Files', 'Advertising', '17/Oct/90', 24),(9012, 'G.Gates', 'Advertising', '15/Mar/99', 48)


--a.SQL Query to display unique Department names. 
select distinct department from Employee

--b.SQL Query to add Column Location and insert value for all the records(location)
alter table Employee add Location varchar(82)

update Employee set Location='Banglore' where EmpId=1234	
update Employee set Location='Mumbai' where EmpId=2345
update Employee set Location='Pune' where EmpId=3456
update Employee set Location='Chennai' where EmpId=4567
update Employee set Location='Hydrabad' where EmpId=5678
update Employee set Location='Chennai' where EmpId=6789
update Employee set Location='Manglore' where EmpId=7890
update Employee set Location='Mysore' where EmpId=8901
update Employee set Location='Kochi' where EmpId=9012

--C.SQL Query to change the column name from Empid to EmployeeID 

sp_rename 'Employee.EmpId' ,'EmployeeID'

--D.SQL Query to fetch the records of Employees who work in Sales and Shipping. 
select * from Employee where Department in ('Sales','Shipping')

--E.SQL query to fetch the records who has joined after year 1991 and before 1998. 
--check
select * from Employee where HireDate between '01/01/1991' and '12/31/1997'

--F.SQL query to create a new table with same table structure with no data in it. 

select * into NewTable from Employee where 1=2
select * from NewTable
--G.SQL query to fetch records who has attended training more than 40.

select * from Employee where Training > 40

--H SQL Query to create a clone of above table.
select * into CloneTable from Employee
select * from CloneTable

-- I.SQL Query to delete the record who has attended training more than 60. 

Delete from Employee where Training > 60
select * from Employee

--J.SQ Query to delete the column Hire Date
alter table Employee drop column HireDate
select * from Employee

--K.SQL Query to change the datatype of Department to varchar (34).
sp_help Employee
alter table Employee alter column Department varchar(34)
sp_help Employee

--L.SQL Query to insert one record for Name, Department and Training column. 
insert into Employee(Name, Department, Training) values('kumar','Design',18)
