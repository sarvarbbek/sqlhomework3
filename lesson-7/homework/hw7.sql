select min(Price) as minPrice
from Products
select max(Salary) as maxPrice
from Employees
select count(*) as numberRows
from  Customers
select distinct count(Category) as countCategory
from Products
select  count(distinct Category) as countCategory
from Products
select ProductID, sum(SaleAmount) as total
from Sales 
group by ProductID 
having ProductID = 7
select avg(Age) as average_age
from Employees
select DepartmentName, count(*) as Employess_count
from Employees
group by DepartmentName
select * from Products
select max(Price)as maxPrice, min(Price) as minPrice
from Products
group by Category
select * from Sales
select CustomerID, sum(SaleAmount) as resalt 
from Sales 
group by CustomerID
select DepartmentName, count(*) as EmployeesCount
from Employees
group by DepartmentName 
having count(*) > 5
select * from Sales
select ProductID,
sum(SaleAmount) as SalesSum,
avg(SaleAmount) as SalesAvd
from Sales
group by ProductID
select * from Employees
select  count(*) as HR_Deportment
from Employees 
where  DepartmentName = 'HR'
select DepartmentName, min(Salary) as minSalary,
max(Salary) as maxSalary 
from Employees 
group by DepartmentName
select DepartmentName, avg(Salary) as avgSalary
from Employees
group by DepartmentName
select DepartmentName, count(*) as total_empl,
avg(Salary)as avg_salary
from Employees
group by DepartmentName
select Category, avg(Price) as avg_Price
from Products 
group by Category
having  avg(Price) > 400
select * from Sales
select 
year(SaleDate)as year,
sum(SaleAmount) as total_sales
from Sales
group by year (SaleDate)
select CustomerID, count(*) as Order_count
from Orders
group by CustomerID
having count(*) >= 3
select DepartmentName, avg(Salary) as avg_Salary
from Employees
group by DepartmentName
having avg(Salary) > 60000

select Category, avg(Price) as avg_Price  
from Products
group by Category
having avg(Price) > 150

select * from Sales
select CustomerID, sum(SaleAmount) as total_Sale
from Sales
group by CustomerID
having sum(SaleAmount) > 1500
select DepartmentName, 
sum(Salary) as SUM_SALARY,
avg(Salary) as AVF_SALARY
from Employees 
group by DepartmentName 
having  avg(Salary) > 65000


SELECT 
    custid,
    SUM(CASE WHEN freight > 50 THEN freight  ELSE 0 END) AS TotalOver50,
    MIN(freight) AS LeastPurchase
FROM sales.orders
GROUP BY custid;

select * from Orders
SELECT 
    YEAR(OrderDate) AS SalesYear,
    MONTH(OrderDate) AS SalesMonth,
    SUM(TotalAmount) AS TotalSales,
    COUNT(DISTINCT ProductID) AS UniqueProductsSold
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
HAVING COUNT(DISTINCT ProductID) >= 2
ORDER BY SalesYear, SalesMonth;
 select 
 year(orderdate) as years,
 min(Quantity) as min_Q,
 max(Quantity) as max_Q
 from Orders
 group by year(orderdate)



