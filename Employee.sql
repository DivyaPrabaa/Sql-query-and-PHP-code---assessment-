use question1;
 INSERT INTO Employees (EmpID, EmpName, ManagerID) VALUES
 (1, 'Gopi', NULL),
 (2, 'Sudha', 1),
 (3, 'Dravid', 1),
 (4, 'Sid', 2),
 (5, 'Harsh', 4);
 Select * from Employees;
 SELECT E.EmpName AS Employee, M.EmpName AS Manager
 FROM Employees E
 LEFT JOIN Employees M ON E.ManagerID = M.EmpID;
 SELECT EmpName 
 FROM Employees WHERE ManagerID = 2;
 SELECT M.EmpName AS Manager, COUNT(E.EmpID) AS NumOfReports
FROM Employees E JOIN Employees M ON E.ManagerID = M.EmpID GROUP BY M.EmpName;
SELECT EmpName  FROM Employees  WHERE ManagerID IS NULL;
SELECT M.EmpName AS Manager, E.EmpName AS Employee
FROM Employees E LEFT JOIN Employees M ON E.ManagerID = M.EmpID ORDER BY M.EmpName, E.EmpName;