select * from Products 
select Category, count(ProductID) as sum_Products
from Products
group by Category
select Category, avg(Price) as avg_Products
from Products
where Category = 'Electronics'
select * from Customers
where City like 'L%'
select * from Products
where ProductName like '%er%'
select* from Customers
where Country like '%A'
select max(Price) MAX_PR
from Products
select StockQuantity,
case
when StockQuantity <30 then 'LOW STOCK'
else 'Sufficient'
end as resalt
from Products
select * from Customers
select Country, count( CustomerID) as total_Custemers
from Customers
group by Country
select 
max(Quantity)as max_QU,
min(Quantity)as min_QU
from Orders
 select distinct CustomerID from Orders 
 where OrderDate>= '2023-01-01'
 and OrderDate  < '2023-02-01'
 Except
 select distinct CustomerID from Invoices
 select ProductName from Products
 union all 
 select ProductName from Products_Discounted
 select ProductName from Products
 union 
 select ProductName from Products_Discounted
 select 
 year(OrderDate) as Order_year, 
 avg(TotalAmount) as AVG_Amount
 from Orders
 group by year(OrderDate)
 order by year(OrderDate)
select  ProductName,
case
when Price < 100 then 'Low'
when Price between 100 and 500 then 'Mid'
when Price > 500 then 'High'
else 'Unknown'
end as pricegroup
from Products 
 select * from  city_population
  select district_name, [2012],[2013]
  into Population_Each_Year
 from 
 ( select district_name, year, population 
 from city_population) as tabil
 pivot 
 ( sum(population) for year in ( [2012],[2013])) as pivottable
select ProductID,  count(*)as totalProduct
from Sales
 group by ProductID
 select ProductName from Products
 where ProductName like '%oo%' 
 select * from   
 ( select district_name, year, population 
 from city_population) as tabil
 pivot 
 (
 sum(population) for district_name in ([Bektemir], [Chilonzor], [Yakkasaroy])
 )as pivottable
 select top 3 CustomerID, 
 sum(TotalAmount)as SUM_AMOUNT
 from Invoices
 group by CustomerID
 order by SUM_AMOUNT desc
 SELECT district_name, year, population
FROM Population_Each_Year
UNPIVOT (
    population FOR year IN ([2012], [2013])
) AS UnpivotTable;
SELECT p.ProductName, COUNT(s.ProductID) AS TimesSold
FROM Products p
JOIN Sales s
    ON p.ProductID = s.ProductID
GROUP BY p.ProductName;  
SELECT Year, district_Name, population
FROM (
    SELECT year, [Bektemir], [Chilonzor], [Yakkasaroy]
    FROM (
        SELECT district_name, year, population 
        FROM city_population
    ) AS tabil
    PIVOT (
        SUM(population) FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
    ) AS PivotTable
) AS SourceTable

