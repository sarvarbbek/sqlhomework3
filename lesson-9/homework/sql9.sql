select ProductName, SupplierName from Products cross join Suppliers 
 select DepartmentName, Name from Departments cross  join Employees  
 select p.ProductName, s.SupplierName from Products p join Suppliers s on p.SupplierID=s.SupplierID
 select c.FirstName+' '+c.LastNAme as CustomerName, o.OrderID from Customers c  join Orders o on c.CustomerID=o.CustomerID 
 select * from Courses cross join Students
 select p.ProductName, o.OrderID from  Products p join Orders o  on p.ProductID=o.ProductID
 select d.DepartmentName, e.Name from Departments d join Employees e on d.DepartmentID=e.DepartmentID
 select s.name, e.CourseID from Students s join Enrollments e on s.StudentID=e.StudentID
 select o.* from  Payments p join Orders o on p.OrderID=o.OrderID
 select o.* from Orders o join Products p on o.ProductID=p.ProductID where p.Price > 100
select e.Name, d.DepartmentName  from Employees e cross join  Departments d where e.DepartmentID<> d.DepartmentID 
select o.OrderID, o.ProductID, o.Quantity, p.StockQuantity  from Orders o  join Products p on o.ProductID=p.ProductID where  o.Quantity >p.StockQuantity
]select c.FirstName+' '+c.LastName as CustomerName, s.ProductID, s.SaleAmount   from Customers c join Sales s on c.CustomerID=s.CustomerID where s.SaleAmount >=500 
select s.Name as StudentName,  c.CourseName  from Enrollments e join Students s on e.StudentID = s.StudentID join Courses c on e.CourseID=c.CourseID 
select p.ProductName, s.SupplierName from Products p join Suppliers s on p.SupplierID=s.SupplierID where  s.SupplierName like '%Tech%'
select o.OrderID, 
cast(o.TotalAmount as int)as OR_AMOUNT,
cast(p.Amount as int) as PY_AMOUNT 
from Orders o join Payments p  
on o.OrderID=p.OrderID 
where cast(p.Amount as int)  < cast(o.TotalAmount as int)
 select e.EmployeeID, e.Name, d.DepartmentName 
 from Employees e 
 join Departments d 
 on e.DepartmentID= d.DepartmentID
 select p.ProductName,c.CategoryName 
 from Products p 
 join Categories c 
 on p.Category=c.CategoryID
 where c.CategoryName in ('Electronics',  'Furniture')
 select s.SaleID, c.FirstName+' '+c.LastName as Customers
 from Sales s
 join Customers c 
 on s.CustomerID=c.CustomerID
 where Country = 'USA'
] select o.OrderID, o.TotalAmount, c.FirstName+' '+c.LastName as CUTOMERNAME
 from Orders o 
 join Customers c 
 on o.CustomerID= c.CustomerID
 where c.Country = 'Germany'
 and o.TotalAmount > 100
 
select a.EmployeeID as Emp1_ID, 
       a.Name as Emp1_Name, 
       a.DepartmentID as Emp1_Department,
       b.EmployeeID as Emp2_ID, 
       b.Name as Emp2_Name, 
       b.DepartmentID as Emp2_Department
from Employees a
join Employees b 
   on a.EmployeeID < b.EmployeeID  
  and a.DepartmentID <> b.DepartmentID;

  select p.PaymentID,  o.OrderID, o.Quantity,
  pt.ProductName,
  cast(pt.Price as int ) as Poduct_Price,
  cast (p.Amount as int ) as Payment_Amount 
  from Payments p
  join Orders o 
  on p.OrderID=o.OrderID
  join Products pt 
  on o.ProductID=pt.ProductID
  where  cast (p.Amount as int ) != (o.Quantity * cast(pt.Price as int ) )

  select s.StudentID, s.Name
from Students s
left join Enrollments e 
   on s.StudentID = e.StudentID
where e.EnrollmentID is null;

select m.EmployeeID as ManagerID,
       m.Name as ManagerName,
       m.Salary as ManagerSalary,
       e.EmployeeID as EmployeeID,
       e.Name as EmployeeName,
       e.Salary as EmployeeSalary
from Employees e
join Employees m
   on e.ManagerID = m.EmployeeID
where m.Salary <= e.Salary;

select distinct c.CustomerID, c.FirstName + ' ' + c.LastName as CustomerName, o.OrderID
from Customers c
join Orders o 
   on c.CustomerID = o.CustomerID
left join Payments p 
   on o.OrderID = p.OrderID
where p.PaymentID is null;







