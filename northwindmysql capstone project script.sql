use northwind;


select productname , quantityperunit from northwind.products;
select productid , ProductName from northwind.products where discontinued=false
order by ProductName;
select productid , productname from northwind.products where Discontinued=true
 order by ProductName;
 select productname , unitprice from northwind.products order by UnitPrice desc;
 select ProductID, productname , unitprice from northwind.products where unitprice < 20;
 select productname , unitprice from northwind.products where unitprice between 15 and 25 order by unitprice asc;
 select distinct productid, productname,unitprice from northwind.products  
 where UnitPrice > (select avg(unitprice) from northwind.products) 
 order by ProductName; 
 select distinct productid , productname as ten_most_expensive_products , unitprice from northwind.products
as a where 10 >= (select count(distinct UnitPrice) from northwind.products as b where b.UnitPrice >= a.UnitPrice)
order by unitprice desc;

select (select count(productname)from northwind.products where Discontinued=false) as current_products,
(select count(productname) from northwind.products where discontinued =true) as discontinued_products;

select productname , unitsonorder, unitsinstock from northwind.products where ((discontinued)=false) and ((UnitsInStock)< UnitsOnOrder);
