use Question2;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

CREATE TABLE Enrollments (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
INSERT INTO Students VALUES (1, 'Divya');
INSERT INTO Students VALUES (2, 'Rahul');
INSERT INTO Students VALUES (3, 'Meena');

INSERT INTO Courses VALUES (101, 'Math');
INSERT INTO Courses VALUES (102, 'Science');
INSERT INTO Courses VALUES (103, 'History');

INSERT INTO Enrollments VALUES (1, 101); 
INSERT INTO Enrollments VALUES (1, 102); 
INSERT INTO Enrollments VALUES (2, 101); 
INSERT INTO Enrollments VALUES (2, 103); 
INSERT INTO Enrollments VALUES (3, 102); 
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollments;
SELECT S.StudentName FROM Students S JOIN Enrollments E ON S.StudentID = E.StudentID JOIN Courses C ON E.CourseID = C.CourseID WHERE C.CourseName = 'Science';
SELECT C.CourseName FROM Courses C JOIN Enrollments E ON C.CourseID = E.CourseID JOIN Students S ON E.StudentID = S.StudentID WHERE S.StudentName = 'Rahul';
SELECT C.CourseName, COUNT(E.StudentID) AS StudentCount FROM Courses C LEFT JOIN Enrollments E ON C.CourseID = E.CourseID GROUP BY C.CourseName;
SELECT S.StudentName FROM Students S JOIN Enrollments E ON S.StudentID = E.StudentID GROUP BY S.StudentName HAVING COUNT(DISTINCT E.CourseID) > 1;
SELECT C.CourseName FROM Courses C LEFT JOIN Enrollments E ON C.CourseID = E.CourseID WHERE E.StudentID IS NULL;

