use Question3;
INSERT INTO Customers VALUES
(1, 'Arun'),
(2, 'Banu'),
(3, 'Chitra');
INSERT INTO Orders VALUES
(101, '2025-06-01', 1),  
(102, '2025-06-02', 1),  
(103, '2025-06-03', 3),  
(104, '2025-06-04', 3),  
(105, '2025-06-05', 1);  
SELECT * FROM  customers;
SELECT * FROM orders;
SELECT O.OrderID, O.OrderDate FROM Orders O JOIN Customers C ON O.CustomerID = C.CustomerID WHERE C.CustomerName = 'Arun';
SELECT C.CustomerName, COUNT(O.OrderID) AS NumOrders FROM Customers C JOIN Orders O ON C.CustomerID = O.CustomerID GROUP BY C.CustomerName HAVING COUNT(O.OrderID) > 1;
SELECT C.CustomerName, COUNT(O.OrderID) AS TotalOrders FROM Customers C LEFT JOIN Orders O ON C.CustomerID = O.CustomerID GROUP BY C.CustomerName;
SELECT C.CustomerName FROM Customers C LEFT JOIN Orders O ON C.CustomerID = O.CustomerID WHERE O.OrderID IS NULL;
SELECT C.CustomerName, MAX(O.OrderDate) AS MostRecentOrder FROM Customers C LEFT JOIN Orders O ON C.CustomerID = O.CustomerID GROUP BY C.CustomerName;
