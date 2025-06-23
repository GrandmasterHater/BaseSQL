--11.5.1.
SELECT * FROM northwind.dbo.Customers
LEFT JOIN northwind.dbo.Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;

--11.5.2.
SELECT ContactName, City, Country, 'Customer' as Type 
FROM northwind.dbo.Customers
UNION
SELECT ContactName, City, Country, 'Supplier' as Type 
FROM northwind.dbo.Suppliers;

