
CREATE DATABASE School;

USE School;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE
);


CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    StudentID INT,
    Subject VARCHAR(50),
    Grade CHAR(1),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);


INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth)
VALUES
(1, 'mahdi', 'saed', '2005-04-12'),
(2, 'hoosein', 'amir', '2004-11-05'),
(3, 'sara', 'omid', '2005-08-21');


INSERT INTO Grades (GradeID, StudentID, Subject, Grade)
VALUES
(1, 1, 'Math', 'A'),
(2, 1, 'Science', 'B'),
(3, 2, 'Math', 'C'),
(4, 2, 'Science', 'A'),
(5, 3, 'Math', 'B'),
(6, 3, 'Science', 'B');

SELECT s.StudentID, s.FirstName, s.LastName, g.Subject, g.Grade
FROM Students s
JOIN Grades g ON s.StudentID = g.StudentID;