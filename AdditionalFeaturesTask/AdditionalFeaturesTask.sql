--7.3.1.
SELECT OrderID, Discount * 100 as DiscountPercent 
From northwind.dbo.[Order Details]

--7.3.2. 
SELECT * From northwind.dbo.[Order Details]
WHERE 40 < (SELECT UnitsInStock FROM northwind.dbo.Products 
            WHERE ProductID = northwind.dbo.[Order Details].ProductID);

--7.3.3. 
SELECT * From northwind.dbo.[Order Details]
WHERE (SELECT UnitsInStock FROM northwind.dbo.Products 
       WHERE ProductID = northwind.dbo.[Order Details].ProductID) > 40
      AND 
      (SELECT Freight FROM northwind.dbo.Orders
       WHERE OrderID = northwind.dbo.[Order Details].OrderID) >= 50;