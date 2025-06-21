--9.4.1.
SELECT CustomersFirst.CustomerID, CustomersSecond.CustomerID
FROM northwind.dbo.Customers CustomersFirst, northwind.dbo.Customers CustomersSecond
WHERE CustomersFirst.CustomerID < CustomersSecond.CustomerID 
      AND CustomersFirst.Region IS NULL 
      AND CustomersSecond.Region IS NULL;

--9.4.2.
SELECT * FROM northwind.dbo.Orders Orders
WHERE EXISTS (SELECT * FROM northwind.dbo.Customers
              WHERE Orders.CustomerID = CustomerID 
                    AND Region IS NOT NULL);

--9.4.3.
SELECT * FROM northwind.dbo.Orders Orders
WHERE Freight > ALL (SELECT UnitPrice FROM northwind.dbo.Products);

