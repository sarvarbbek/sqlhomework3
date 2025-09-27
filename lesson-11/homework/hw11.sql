--1
select o.OrderID, c.firstname+' '+lastname as CustomerName, o.OrderDate
from Orders o
join Customers c 
on o.customerid= c.customerid
where year (o.orderdate) > 2022


--2
select e.name, d.departmentname
from employees e 
join departments d 
on e.departmentid=d.departmentid 
where  d.departmentname in ('sales', 'marketing')

--3
select d.departmentname, max(e.salary) as max_salary
from Departments d
join Employees e 
on d.departmentid=e.departmentid
group by d.departmentname

--4  
select  c.firstname+' '+lastname as CustomerName, o.orderid,o.orderdate
from Customers c
join Orders o 
on c.CustomerID=o.CustomerID
where c.Country = 'USA'
and year (orderdate) =  2023

--5 
select c.firstname+' '+c.lastname as CustomerName, 
count(o.totalamount) as TotalOrders
from Orders o
join Customers c
on o.CustomerID=c.customerid
group by c.firstname+' '+c.lastname 

--6 
 select p.ProductName,  s.SupplierName
 from Products p
 join Suppliers s 
 on p.supplierid=s.SupplierID
 where SupplierName in ('Gadget Supplies', 'Clothing Mart')
 
 --7 
 select c.firstname+' '+c.lastname as CustomerName, 
 max(orderdate) as MostRecentOrderDate 
 from Customers c 
 join Orders o
 on c.CustomerID=o.CustomerID 
 group by c.firstname+' '+c.lastname

 --8 
 select  c.firstname+' '+c.lastname as CustomerName, 
 o.totalamount as OrderTotal 
 from Orders o 
 join Customers c 
 on o.CustomerID=c.CustomerID
where o.totalamount > 500

--9 
select p.ProductName, s.SaleDate, s.SaleAmount
from  Products p 
join Sales s 
on p.ProductID=s.ProductID
where year (s.saledate)= 2022
or s.SaleAmount > 400

--10
select p.ProductName, 
sum(saleamount) as TotalSalesAmount 
from sales s 
join Products p 
on s.ProductID=p.ProductID
group by p.ProductName 

--11
select e.Name, d.DepartmentName, e.Salary
from employees e 
join Departments d
on e.DepartmentID=d.DepartmentID
where d.DepartmentName ='HR'
and e.Salary > 60000

--12 
select p.productname, s.saledate, p.stockquantity
from Products p 
join Sales s 
on p.ProductID=s.ProductID
where year(s.saledate)= 2023 
and p.StockQuantity > 100

--13
select e.name, d.departmentname, e.hiredate 
from Employees e
join Departments d 
on e.DepartmentID=d.DepartmentID
where DepartmentName= 'sales'
or year (e.HireDate) > 2020

--14
select c.firstname+' '+c.lastname as CustomerName, o.orderid, c.address, o.orderdate 
from Customers c
join Orders o 
on c.CustomerID	= o.CustomerID
where c.country='USA'
and c.address like '[0-9][0-9][0-9][0-9]%'

--15 
select p.productname, p.category,s.saleamount 
from  Products p
join sales s 
on p.productid=s.productid 
where p.ProductName ='Electronics '
or  s.SaleAmount  > 350

--16
select c.categoryname, count(productname) as ProductCount
from Products p 
join Categories c
on p.Category=c.CategoryID
group by c.categoryname

--17
select c.firstname+' '+c.lastname as CustomerName,c.city, o.TotalAmount, o.orderid
from Customers c
join Orders o 
on c.customerid=o.CustomerID
where c.city = 'Los Angeles'
and o.totalamount > 300

--18
select e.name, d.departmentname
from Employees e
join Departments d
on e.departmentid = d.DepartmentID
where DepartmentName in ('HR', 'Finance')
or(
        (LEN(e.Name)
         - LEN(REPLACE(LOWER(e.Name), 'a', ''))
         - LEN(REPLACE(LOWER(e.Name), 'e', ''))
         - LEN(REPLACE(LOWER(e.Name), 'i', ''))
         - LEN(REPLACE(LOWER(e.Name), 'o', ''))
         - LEN(REPLACE(LOWER(e.Name), 'u', ''))
        ) >= 4)

--19
select e.name, d.departmentname, e.salary
from Employees e
join Departments d 
on e.DepartmentID=d.DepartmentID
where DepartmentName in ('Sales', 'Marketing')
and e.Salary > 60000


