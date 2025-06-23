--12.3.1.
INSERT INTO northwind.dbo.Employees (
       LastName, 
       FirstName, 
       Title, 
       TitleOfCourtesy, 
       BirthDate, 
       HireDate, 
       Address, 
       City, 
       PostalCode, 
       Country)
VALUES ('Muromets',
        'Ilya',
        'Bogatyr',
        'Mr.',
        '1948-12-08',
        '1992-05-01',
        'st.1, h.25',
        'Murom',
        '442056',
        'Ancient Rus');

--12.3.2. 
INSERT INTO northwind.dbo.EmployeeTerritories(EmployeeID, TerritoryID)
VALUES (16, '06897');

--12.3.3.
INSERT INTO northwind.dbo.Orders(EmployeeID)
VALUES (16);
--Запись добавлена успешно

--Если же добавлять запись в Orders без указания имени столбца EmployeeID, то возникнет ошибка т.к. значение переданное в VALUES будет подставляться в первый столбец (OrderID).