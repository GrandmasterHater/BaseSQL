Обнаружил расхождение в описании назначения представления для задачи 14.3. В моей версии таблицы следующий запрос:
```
SELECT dbo.[Order Subtotals].Subtotal AS SaleAmount, dbo.Orders.OrderID, dbo.Customers.CompanyName, dbo.Orders.ShippedDate
FROM dbo.Customers INNER JOIN
dbo.Orders INNER JOIN
dbo.[Order Subtotals] ON dbo.Orders.OrderID = dbo.[Order Subtotals].OrderID ON dbo.Customers.CustomerID = dbo.Orders.CustomerID
WHERE (dbo.[Order Subtotals].Subtotal > 2500) AND (dbo.Orders.ShippedDate BETWEEN '19970101' AND '19971231')
```

В своём определении я не учёл выводимые поля таблицы поэтому описание получилось более техническим, сфокусированным на условиях выборки, а не представлении целиком. 