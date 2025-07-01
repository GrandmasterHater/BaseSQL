--1.
SELECT * FROM Squads
WHERE LeaderID IS NULL;

--2.
SELECT * FROM Dwarves
WHERE Age > 150 AND Profession = 'Warrior';

--3.
SELECT * FROM Dwarves
WHERE DwarfID IN (SELECT OwnerID FROM Items
                  WHERE Type = 'weapon');

--4.
SELECT Dwarves.DwarfID, Dwarves.Name, Tasks.Status, COUNT(Tasks.TaskID) as TasksCount
From Dwarves LEFT JOIN Tasks
ON Dwarves.DwarfID = Tasks.AssignedTo
GROUP BY Dwarves.DwarfID, Dwarves.Name, Tasks.Status

--5.
SELECT * FROM Tasks 
WHERE AssignedTo IN (SELECT DwarfID FROM Dwarves
                     WHERE SquadID = (SELECT SquadID FROM Squads
                                      WHERE Name = 'Guardians'));

-- Также можно с помощью двух JOIN операций
SELECT Tasks.TaskID, Tasks.Description, Tasks.Status, Dwarves.Name 
FROM Tasks JOIN Dwarves 
ON Tasks.AssignedTo = Dwarves.DwarfID 
JOIN Squads
ON Squads.SquadID = Dwarves.SquadID
WHERE Squads.Name = 'Guardians';

--6.
SELECT DwarfNames.Name, RelationName.Name, Relationships.Relationship
FROM Relationships 
JOIN Dwarves DwarfNames ON Relationships.DwarfID = DwarfNames.DwarfID
JOIN Dwarves RelationName ON Relationships.RelatedTo = RelationName.DwarfID
WHERE Relationship IN ('Супруг', 'Сын', 'Дочь', 'Брат', 'Сестра', 'Отец', 'Мать', 'Дедушка', 'Бабушка');
