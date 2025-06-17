--5.4.1.
SELECT * FROM northwind.dbo.Employees
ORDER BY Country, BirthDate DESC;

--5.4.2.
SELECT * FROM northwind.dbo.Employees
WHERE Region IS NOT NULL
ORDER BY Country, BirthDate DESC;

--5.4.3.
SELECT AVG(UnitPrice) AS AvgPrice,
       MIN(UnitPrice) AS MinPrice,
       MAX(UnitPrice) AS MaxPrice 
FROM northwind.dbo.[Order Details];

--5.4.4.
SELECT COUNT(DISTINCT City) as UniqueCities 
FROM northwind.dbo.Customers;