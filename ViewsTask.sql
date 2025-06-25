--14.1.
/*
    Представление Invoices аккумулирует данные из таблиц Shippers, Products, Employees, Customers, Orders, Order  Details и даёт больше информации о заказе - выводит имя продавца, наименование и цену товаров, их количество и скидку, а также итоговую стоимость. По сути на основе нескольких таблиц формирует счёт на оплату.
*/

--14.2. 
/*
   Представление CategorySales for 1997 агрегирует данные из представления Product Sales for 1997. Группирует по названию категории и выводит сумму всех продаж за год по этой категории.
*/

--14.3.
/*
   Представление Sales Total by Amount формирует список заказов из таблиц Customers, Orders и представления Order Subtotals, в которых сумма заказа превышает 2500, а дата отгрузки попадает в 1997 год.
*/

--14.4.
/*
    Представление Products Above Average Price на основе таблицы Products формирует список товаров цена которых превышает среднюю цену товаров.
*/

--14.5.
/*
    Представление Summary of Sales by Quarter на основе таблицы Orders и представления Order Subtotals формирует список всех заказов у которых указана дата отгрузки. 

    Исходя из названия должна быть группировка по кварталам, но в моей таблице запрос не содержит такой группировки:

SELECT        dbo.Orders.ShippedDate, dbo.Orders.OrderID, dbo.[Order Subtotals].Subtotal
FROM            dbo.Orders INNER JOIN
                         dbo.[Order Subtotals] ON dbo.Orders.OrderID = dbo.[Order Subtotals].OrderID
WHERE        (dbo.Orders.ShippedDate IS NOT NULL)
*/
