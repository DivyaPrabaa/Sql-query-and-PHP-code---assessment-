use question4;
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(100)
);
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    BookTitle VARCHAR(100)
);

CREATE TABLE Borrowings (
    BorrowID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    BookID INT,
    BorrowDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Users VALUES (1, 'Divya'), (2, 'Arun'), (3, 'Sneha');

INSERT INTO Books VALUES 
(101, 'Python Basics'), 
(102, 'SQL Mastery'), 
(103, 'Data Science'), 
(104, 'Machine Learning'), 
(105, 'Java Advanced');

INSERT INTO Borrowings (UserID, BookID, BorrowDate) VALUES 
(1, 101, '2025-06-01'),
(1, 102, '2025-06-02'),
(2, 101, '2025-06-03'),
(2, 103, '2025-06-04'),
(3, 102, '2025-06-05'),
(3, 104, '2025-06-06');

SELECT B.BookTitle FROM Borrowings BR JOIN Books B ON BR.BookID = B.BookID WHERE BR.UserID = 1;
SELECT U.UserName FROM Borrowings BR JOIN Users U ON BR.UserID = U.UserID WHERE BR.BookID = 101;
SELECT B.BookTitle FROM Books B LEFT JOIN Borrowings BR ON B.BookID = BR.BookID WHERE BR.BookID IS NULL;
SELECT U.UserName, COUNT(BR.BookID) AS BorrowedBooks FROM Users U LEFT JOIN Borrowings BR ON U.UserID = BR.UserID GROUP BY U.UserName;
SELECT U.UserName, COUNT(BR.BookID) AS BorrowedBooks
FROM Users U
JOIN Borrowings BR ON U.UserID = BR.UserID
GROUP BY U.UserName
HAVING COUNT(BR.BookID) = (
    SELECT MAX(BookCount)
    FROM (
        SELECT COUNT(BookID) AS BookCount
        FROM Borrowings
        GROUP BY UserID
    ) AS BookCounts
);

