--6.3.1.
SELECT ContactType FROM northwind.dbo.Contacts
GROUP BY ContactType;

--6.3.2.
SELECT CategoryId, AVG(UnitPrice) as AverageUnitPrice FROM northwind.dbo.Products
GROUP BY CategoryId
ORDER BY AverageUnitPrice ASC;
