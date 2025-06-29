CREATE INDEX IX_Territories_RegionID ON Territories (RegionID);

--Предполагаю, что для случаев выборок по столбцам с описанием будет удобно их проиндексировать
CREATE INDEX IX_Region_Description ON Region (RegionDescription);

CREATE INDEX IX_Territories_TerritoryDescription ON Territories (TerritoryDescription);