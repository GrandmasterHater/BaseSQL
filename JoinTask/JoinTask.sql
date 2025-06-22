--10.4.1.
SELECT Products.ProductName, OrderDetails.UnitPrice 
FROM northwind.dbo.Products Products
JOIN northwind.dbo.[Order Details] OrderDetails
ON Products.ProductID = OrderDetails.ProductID AND OrderDetails.UnitPrice < 20;

--10.4.2.
-- Значения NULL встречаются т.к. при опреации FULL JOIN происходит полное объединений множеств, соответсвенно 
-- клиенты, не создававшие заказ не будут отражены в таблице заказов и их поле Freight будет NULL.


--10.4.3.
-- Нужно в WHERE добавить условие на совпадение ключей между таблицами.

--10.4.4.
SELECT Products.ProductName, [Order Details].UnitPrice
FROM northwind.dbo.Products JOIN northwind.dbo.[Order Details]
ON Products.ProductID = [Order Details].ProductID

