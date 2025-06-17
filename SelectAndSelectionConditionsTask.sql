-- 4.3.1.
SELECT * FROM northwind.dbo.Customers
WHERE ContactName LIKE '% C%';

-- 4.3.2.
SELECT * ShipCountry FROM northwind.dbo.Orders
WHERE (Freight BETWEEN 100 AND 200) AND (ShipCountry IN ('USA', 'France'));

-- 4.3.3.
SELECT * FROM northwind.dbo.EmployeeTerritories
WHERE TerritoryID BETWEEN 6897 AND 31000;