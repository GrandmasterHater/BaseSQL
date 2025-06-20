--8.3.1.
SELECT Products.ProductName, Categories.CategoryID, Categories.CategoryName
FROM northwind.dbo.Products as Products, northwind.dbo.Categories as Categories
WHERE Products.CategoryID = Categories.CategoryID;

--8.3.2.
SELECT Products.ProductName, OrderDetails.UnitPrice
FROM northwind.dbo.Products as Products, northwind.dbo.[Order Details] as OrderDetails
WHERE Products.ProductID = OrderDetails.ProductID AND OrderDetails.UnitPrice < 20;

--8.3.3.
SELECT Products.ProductName, OrderDetails.UnitPrice, Categories.CategoryID, Categories.CategoryName
FROM northwind.dbo.Products as Products, northwind.dbo.[Order Details] as OrderDetails, northwind.dbo.Categories as Categories
WHERE Products.ProductID = OrderDetails.ProductID AND OrderDetails.UnitPrice < 20 AND Products.CategoryID = Categories.CategoryID;