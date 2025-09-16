create table Products (ProductID int primary key, ProductName varchar(50), Price decimal(10,2))
insert into Products (ProductID, ProductName, Price)
select 1,'phone', 1000.99
union all
select 2, 'airpods', 200.99
union all
select 3, 'laptop',2000.99
alter table Products 
add constraint unique_nm unique (ProductName)
alter table Products 
add CategoryID int 
select * from Products

create table Categories (CategoryID int primary key, CategoryName varchar(20) unique)

bulk insert Products 
from 'C:\Users\Sarvar\Documents\product.txt'
with 
(
firstrow=1,
fieldterminator=',',
rowterminator='\n'
)

alter table Products 
add constraint RK_products foreign key (CategoryID)
references Categories(CategoryID)

select * from Products

alter table Products 
add Stock int not null default 0
 
select isnull (Price , 0) as Price 
from Products

alter table Products 
add age int 

alter table Products 
add constraint check_age 
check (age >=18)

create table cars(carID int primary key identity (10,5), carName varchar(20))
insert into cars ( carName)
select 'jentra'
union all
select 'nexsi'
union all
select 'cobilt'
select * from cars

create table OrderDetails (OrderID int, DetailsID int, name varchar(20),
constraint PK_orderdetails primary key (OrderID, DetailsID))

create table Employees (EmpID int primary key, EmpName varchar(20) unique)

alter table Products 
add constraint FK_products foreign key (CategoryID)
references Categories(CategoryID)
on delete cascade 
on update cascade


