select top 5 * From Employees
select distinct Category from Products
select * from Products
where price > 100
select * from Customers 
where FirstName like 'A%'
select * from Products
order by  Price asc
select *from Employees
where Salary>=60000 and DepartmentName = 'HR'
SELECT * FROM Employees
select  EmployeeID, FirstName, LastName,
isnull (Email, 'noemail@example.com') 
as email from Employees
select * from Products
where Price between 50 and 100
select * from Products
select distinct Category, ProductName from Products 
order by ProductName desc
select top 10 *from Products
order by Price desc
select * from Employees
select EmployeeID,
coalesce (FirstName, LastName) as Name 
from Employees
select distinct Category, Price from Products
select * from Employees
where Age between 30 and 40  and  DepartmentName = 'Marketing'
select * from Employees
order by Salary desc 
offset 10 rows 
fetch next 10 rows only
select * from Products
where Price <= 1000 and StockQuantity>50 
order by StockQuantity 
select * from Products
where ProductName like '%e%'
select * from Employees 
where DepartmentName in ('HR','IT','Finance')
select * from Customers
order by City, PostalCode desc

select top (5) *, Price*StockQuantity as SaleAmount 
from Products
order by SaleAmount  DESC;
select FirstName +' '+ LastName as FullName
from Employees
select distinct  Category, ProductName, Price 
from Products
where Price > $50
select * from Products
where Price < (select avg(Price)* 0.1 from  Products)
select * from Employees
where Age < 30 and 
DepartmentName in ('HR', 'IT')
select * from Customers
where Email like '%@gmail.com'
select * from Employees
where Salary >all (select Salary from Employees  
where DepartmentName='Sales')
select * from Employees
select *
from Orders
where OrderDate between dateadd (day, -180, getdate()) AND 
