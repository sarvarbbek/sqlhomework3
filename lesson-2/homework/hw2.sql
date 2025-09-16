create table Employees (EmpID int, name varchar(50), Salary decimal(10,2))
insert into Employees values (1, 'ali', 999999.99) insert Employees select 2 , 'Bek', 555.55 union all select , 'Sancho', 2222222.22 update Employees set Salary = 7000 where EmpID = 10 delete from Employees where empID=12

DELETE – jadvaldan malum yozuvlarni ochiradi, lekin strukturani saqlaydi. TRUNCATE – jadvaldagi barcha yozuvlarni tezkor ochiradi, lekin strukturani saqlaydi. DROP – butun jadvalni va uning strukturasi bilan malumotlarni ochiradi.

alter table Employees alter column name nvarchar(100) alter table Employees add Department nvarchar(50) alter table Employees
alter column Salary float

create table Departments (DepartmentID int primary key, DepartmentName varchar(50), Salary int ) truncate table Employees insert into Departments select 1, 'ID', 1000.99 union all select 2, 'MARKETING', 2000.99 union all select 3, 'HH', 7000.99 union all select 4, 'Finance',8888.88 union all select 5, 'Sales',7654.88 select* from Departments update Departments set DepartmentName = 'Management' where Salary > 5000;

truncate table Employees alter table Employees drop column Department execute sp_rename 'Employees', 'StaffMembers'; drop table Departments create table Products (ProductID int primary key, Productname varchar(20), Category varchar(20), Price decimal (10,2), Stock int ) alter table Products add constraint check_ps check (price>0) alter table Products add StockQuantity int default(50) exec sp_rename 'Products.Category','ProductCategory', 'column'; insert into Products (ProductID, ProductName, Category, Price, Stock) values (1, 'phone', 'small', 10000.99, 5) select * into Backup_Products from Products exec sp_rename 'Products', 'Inventory'; alter table Inventory drop constraint chek_pc; alter table Inventory alter column Price float alter table Inventory add ProductCode int identity (1000,5)
