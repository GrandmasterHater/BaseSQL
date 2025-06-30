--1.
SELECT * FROM Dwarves JOIN Squads
ON Dwarves.SquadID = Squads.SquadID;

--2.
SELECT * FROM Dwarves
WHERE Profession = 'miner' AND SquadID IS NULL;

--3.
SELECT * FROM Tasks
WHERE TaskPriority = (SELECT MAX(TaskPriority) FROM Tasks) 
      AND TaskStatus = 'pending';

--4.
SELECT Dwarves.DwarfID, Dwarves.DwarfName, COUNT(Dwarves.DwarfID) as ItemsCount 
FROM Items JOIN Dwarves
ON Items.OwnerID = Dwarves.DwarfID
GROUP BY Dwarves.DwarfID, Dwarves.DwarfName;

--5.
SELECT Squads.SquadID, Squads.SquadName, COUNT(Dwarves.DwarfID) as DwarvesCount 
FROM Squads LEFT JOIN Dwarves
ON Squads.SquadID = Dwarves.SquadID
GROUP BY Squads.SquadID, Squads.SquadName;

--6.
SELECT Dwarves.Profession, COUNT(*) as PendingTasksCount
FROM Dwarves JOIN Tasks
ON Dwarves.DwarfID = Tasks.AssignedTo
WHERE Tasks.TaskStatus IN ('pending', 'in_progress')
GROUP BY Dwarves.Profession 
ORDER BY PendingTasksCount DESC;

--7.
SELECT Items.ItemType, AVG(Dwarves.Age) as AvgDwarfAge
FROM Items JOIN Dwarves
ON Items.OwnerID = Dwarves.DwarfID
GROUP BY Items.ItemType;

--8.
SELECT * 
FROM Dwarves LEFT JOIN Items
ON Dwarves.DwarfID = Items.OwnerID
WHERE Dwarves.Age > (SELECT AVG(Age) FROM Dwarves)
      AND Items.ItemID IS NULL;