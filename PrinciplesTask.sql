-- 3.9.1
SELECT ProductName, UnitsInStock
FROM northwind.dbo.Products;

-- 3.9.2
SELECT ProductName, UnitPrice
FROM northwind.dbo.Products
WHERE UnitPrice < 20;

-- 3.9.3
SELECT OrderID, Freight
FROM northwind.dbo.Orders
WHERE Freight >= 11.7 AND Freight <= 98.1; -- Также можно использовать BETWEEN

-- 3.9.4
SELECT LastName, FirstName, TitleOfCourtesy
FROM northwind.dbo.Employees
WHERE TitleOfCourtesy = 'Mr.';

-- 3.9.5
SELECT SupplierID, Country
FROM northwind.dbo.Suppliers
WHERE Country = 'Japan';

-- 3.9.6
SELECT OrderId, EmployeeID
FROM northwind.dbo.Orders
WHERE EmployeeID = 2 OR EmployeeID = 4 OR EmployeeID = 8; -- Но компактнее IN

-- 3.9.7
SELECT OrderID, ProductID, UnitPrice, Quantity
FROM northwind.dbo.[Order Details]
WHERE UnitPrice > 40 AND Quantity < 10;

