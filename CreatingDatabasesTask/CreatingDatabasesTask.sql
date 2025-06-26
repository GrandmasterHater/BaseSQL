--15.7
--Создаём БД
CREATE DATABASE MyTest; 

--Указываем серверу с какой БД хотим работать
USE MyTest;

--Создаём таблицу территорий
CREATE TABLE Territories (
    TerritoryID nvarchar(20) NOT NULL,
    TerritoryDescription nchar(50) NOT NULL,
    RegionID int NOT NULL);

--Задаём ей PK
ALTER TABLE Territories
ADD CONSTRAINT PK_Territories_TerritoryID PRIMARY KEY (TerritoryID);

--Создаём таблицу регионов и сразу задаём PK
CREATE TABLE Region (
    RegionID int NOT NULL,
    RegionDescription nchar(50) NOT NULL,
    CONSTRAINT PK_Region_RegionID PRIMARY KEY (RegionID));

--Связываем таблицы по RegionID (В northwind RegionID является FK и устанавливает связь с Region)
ALTER TABLE Territories
ADD CONSTRAINT FK_Territories_RegionID FOREIGN KEY (RegionID)
    REFERENCES Region(RegionID);

