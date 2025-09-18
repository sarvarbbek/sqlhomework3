
select ProductName as Name from Products
select * from Customers as Client
select * from Products
select ProductName 
from Products
union 
select ProductName 
from Products_Discounted
select  * from Products
intersect 
select * from Products_Discounted
select distinct Country from Customers
select Price,
case
when Price >1000  then 'High'
when Price <=1000 then  'low'
end  as resalt 
from Products
select ProductName 
from Products
union 
select ProductName 
from Products_Discounted
select * from Products
except
select * from Products_Discounted



select *,IIF(price > 1000, 'Expensive', 'Affordable')
			
	from Products



select *  from Employees 
where Age<25 or Salary > 60000
 

   update Employees
   set Salary = Salary * 1.1
   where departmentName = 'HR' or EmployeeID = 5
   select * from Employees
   select * from Sales

   select SaleAmount,
   case
   when SaleAmount >500 then 'Top Tier'
   when SaleAmount between 200 and 500 then 'Mid Tier'
   else 'Low Tier'
   end as result 
   from Sales

   select CustomerID 
   from Orders
   except
   select  CustomerID
   from Sales
   select * from Orders 
   select CustomerID, Quantity,
   case 
   when Quantity=1  then '3%'
   when Quantity between 1and 3 then '5%'
   else  '7%'
   end as resalt 
   from Orders



