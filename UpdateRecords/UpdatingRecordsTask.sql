--13.3.1.
UPDATE northwind.dbo.[Order Details]
SET Discount = 0.20
WHERE Quantity > 50;


--13.3.2.
UPDATE northwind.dbo.Contacts
SET City = 'Piter', Country = 'Russia'
WHERE City = 'Berlin' AND Country = 'Germany';


--13.3.3.
INSERT INTO northwind.dbo.Shippers (CompanyName, Phone)
VALUES ('Russian post', '(800) 100-0000');

INSERT INTO northwind.dbo.Shippers (CompanyName, Phone)
VALUES ('SDEK', '(800) 200-0000');

-- Определил в Shippers id добавленных товаров и удалял по id.
DELETE FROM northwind.dbo.Shippers
WHERE ShipperID = 4;

DELETE FROM northwind.dbo.Shippers
WHERE ShipperID = 5;