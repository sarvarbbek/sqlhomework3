--1 Using the Employees and Departments tables, write a query to return the names and salaries of employees whose salary is greater than 50000, along with their department names.
--🔁 Expected Columns: EmployeeName, Salary, DepartmentName
select e.Name, e.Salary, d.DepartmentName
from Employees e 
join Departments d
on e.DepartmentID=d.DepartmentID
where e.Salary > 50000

--2Using the Customers and Orders tables, write a query to display customer names and order dates for orders placed in the year 2023.
--🔁 Expected Columns: FirstName, LastName, OrderDate

select c.FirstName, c.LastName , o.OrderDate
from Customers c
join Orders o 
on c.CustomerID=o.CustomerID
where year(o.OrderDate)= 2023

  --3Using the Employees and Departments tables, write a query to show all employees along with their department names. Include employees who do not belong to any department.
--🔁 Expected Columns: EmployeeName, DepartmentName

select e.Name, d.DepartmentName
from Employees e 
left join Departments d 
on e.DepartmentID=d.DepartmentID
  
  --4Using the Products and Suppliers tables, write a query to list all suppliers and the products they supply. Show suppliers even if they don’t supply any product.
--🔁 Expected Columns: SupplierName, ProductName

select p.ProductName, s.SupplierName
from  Suppliers s 
left join Products p
on s.SupplierID=p.SupplierID

--5Using the Orders and Payments tables, write a query to return all orders and their corresponding payments. Include orders without payments and payments not linked to any order.
--🔁 Expected Columns: OrderID, OrderDate, PaymentDate, Amount

select o.OrderId, o.OrderDate,  p.PaymentDate, p.Amount
from Orders o 
full outer join Payments p
on o.OrderID=p.OrderID 

--6Using the Employees table, write a query to show each employee's name along with the name of their manager.
--🔁 Expected Columns: EmployeeName, ManagerName

select a.Name as emp_NAME, 
b.Name as Man_NAME 
from Employees a
right join Employees b 
on a.EmployeeID= b.ManagerID

--7Using the Students, Courses, and Enrollments tables, write a query to list the names of students who are enrolled in the course named 'Math 101'.
-- 🔁 Expected Columns: StudentName, CourseName

select s.Name, c.CourseName
from Students s 
join Enrollments e
on s.StudentID=e.StudentID
join Courses c
on e.CourseID=c.CourseID
where  c.CourseName = 'Math 101'


--8Using the Customers and Orders tables, write a query to find customers who have placed an order with more than 3 items. Return their name and the quantity they ordered.
--🔁 Expected Columns: FirstName, LastName, Quantity

select c.FirstName , c.LastName , o.Quantity
from Customers c
join Orders o 
on c.CustomerID=o.CustomerID
where o.Quantity > 3

--9Using the Employees and Departments tables, write a query to list employees working in the 'Human Resources' department.
--🔁 Expected Columns: EmployeeName, DepartmentName

select e.Name, d.DepartmentName
from Employees e 
join Departments d 
on e.DepartmentID=d.DepartmentID
where d.DepartmentName = 'Human Resources'

--10Using the Employees and Departments tables, write a query to return department names that have more than 5 employees.
--🔁 Expected Columns: DepartmentName, EmployeeCount

select count(e.EmployeeID) as empl_count, d.DepartmentName
from Employees e 
join Departments d 
on e.DepartmentID=d.DepartmentID
group by d.DepartmentName
having count(e.EmployeeID) > 5

--11Using the Products and Sales tables, write a query to find products that have never been sold.
--🔁 Expected Columns: ProductID, ProductName
select p.ProductID, p.ProductName 
from Products p 
left join Sales s 
on p.ProductID=s.ProductID
WHERE  s.ProductID is  NULL

--12Using the Customers and Orders tables, write a query to return customer names who have placed at least one order.
--🔁 Expected Columns: FirstName, LastName, TotalOrders 

select c.FirstName, c.LastName, count(o.OrderID) as TotalOrder
from Customers c 
join  Orders o 
on c.CustomerID=o.CustomerID
group by  c.FirstName, c.LastName

--13 Using the Employees and Departments tables, write a query to show only those records where both employee and department exist (no NULLs).
-- 🔁 Expected Columns: EmployeeName, DepartmentName

select e.Name, d.DepartmentName 
from Employees e 
join Departments d 
on e.DepartmentID=d.DepartmentID

--14 Using the Employees table, write a query to find pairs of employees who report to the same manager.
-- 🔁 Expected Columns: Employee1, Employee2, ManagerID
 select
 a.Name as Employee1,
 b.Name as Employee2,
 a.ManagerID
 from Employees a 
 join Employees b 
 on a.EmployeeID<b.EmployeeID
 and a.ManagerID = b.ManagerID

 --15Using the Orders and Customers tables, write a query to list all orders placed in 2022 along with the customer name.
--🔁 Expected Columns: OrderID, OrderDate, FirstName, LastName

select o.OrderID, o.OrderDate, c.FirstName, c.LastName
from Orders o
join Customers c
on o.CustomerID=c.CustomerID
where year(o.OrderDate)= 2022

--16Using the Employees and Departments tables, write a query to return employees from the 'Sales' department whose salary is above 60000.
--🔁 Expected Columns: EmployeeName, Salary, DepartmentName

select e.Name, e.Salary, d.DepartmentName
from Employees e
join Departments d
on e.DepartmentID=d.DepartmentID
where e.Salary >60000
and d.DepartmentName = 'Sales'

--17Using the Orders and Payments tables, write a query to return only those orders that have a corresponding payment.
--🔁 Expected Columns: OrderID, OrderDate, PaymentDate, Amount

select  o.OrderID, o.OrderDate, p.PaymentDate, p.Amount
from Orders o
join Payments p 
on o.OrderID=p.OrderID

--18Using the Products and Orders tables, write a query to find products that were never ordered.
--🔁 Expected Columns: ProductID, ProductName
 
 select p.ProductID, p.ProductName
 from Products p
left  join Orders o
on p.ProductID=o.ProductID
where o.ProductID is null
 


--19Using the Employees table, write a query to find employees whose salary is greater than the average salary in their own departments.
--🔁 Expected Columns: EmployeeName, Salary

SELECT a.Name, a.Salary
FROM Employees a
WHERE a.Salary > (
   SELECT AVG(b.Salary)
   FROM Employees b
   WHERE b.DepartmentID = a.DepartmentID);

--20Using the Orders and Payments tables, write a query to list all orders placed before 2020 that have no corresponding payment.
--🔁 Expected Columns: OrderID, OrderDate


select o.OrderID, o.OrderDate 
from Orders o 
left join Payments p 
on o.OrderID=p.OrderID
where o.OrderDate < '2020-01-01'
and p.OrderID is null

--21Using the Products and Categories tables, write a query to return products that do not have a matching category.
--🔁 Expected Columns: ProductID, ProductName

select p.ProductID,  p.ProductName
from Products p 
left join Categories c 
on p.Category=c.CategoryID
where c.CategoryName is null

--22Using the Employees table, write a query to find employees who report to the same manager and earn more than 60000.
--🔁 Expected Columns: Employee1, Employee2, ManagerID, Salary

select
a.name as Employee1,
b.Name as Employee2,
a. ManagerID,
a.Salary
from Employees a 
join Employees b 
on a.ManagerID=b.ManagerID 
and a.EmployeeID<b.EmployeeID
where a.Salary > 60000
and b.Salary > 60000

--23 Using the Employees and Departments tables, write a query to return employees who work in departments which name starts with the letter 'M'.
--🔁 Expected Columns: EmployeeName, DepartmentName

select e.Name as EmployeeName , d.DepartmentName
from Employees e
join Departments d
on e.DepartmentID=d.DepartmentID
where e.Name like 'M%'

--24 Using the Products and Sales tables, write a query to list sales where the amount is greater than 500, including product names.
--🔁 Expected Columns: SaleID, ProductName, SaleAmount 

select s.SaleID, p.ProductName, s.SaleAmount
from Products p
 join Sales s 
on p.ProductID=s.ProductID
where s.SaleAmount > 500


--25Using the Students, Courses, and Enrollments tables, write a query to find students who have not enrolled in the course 'Math 101'.
--🔁 Expected Columns: StudentID, StudentName

select s.StudentID, s.Name
from Students s
left join Enrollments e
on s.StudentID=e.StudentID
left join Courses c
on c.CourseID=e.CourseID
and c.CourseName = 'Math 101'
where c.CourseName is null

--26Using the Orders and Payments tables, write a query to return orders that are missing payment details.
--🔁 Expected Columns: OrderID, OrderDate, PaymentID

 select  o.OrderID, o.OrderDate, p.PaymentID
 from Orders o 
 left join Payments p 
 on o.OrderID=p.OrderID
 where p.PaymentID is null

 --27Using the Products and Categories tables, write a query to list products that belong to either the 'Electronics' or 'Furniture' category.
--🔁 Expected Columns: ProductID, ProductName, CategoryName

select p.ProductID, p.ProductName, c.CategoryName 
from Products p
join Categories c 
on p.Category=c.CategoryID
where c.CategoryName in ('Electronics', 'Furniture')




