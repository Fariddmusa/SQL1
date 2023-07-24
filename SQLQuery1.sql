--CREATE DATABASE Academy

--USE Academy

CREATE TABLE Students (
    Id INT PRIMARY KEY,
    Fullname NVARCHAR(40),
    Point FLOAT,
    GroupId INT
);

CREATE TABLE Groups (
    Id INT PRIMARY KEY,
    [No] INT
);

CREATE TABLE Exams (
    Id INT PRIMARY KEY,
    SubjectName NVARCHAR(40),
    StartDate DATE,
    EndDate DATE
);

CREATE TABLE StudentExams (
    StudentId INT,
    ExamId INT,
    ResultPoint FLOAT,
    PRIMARY KEY (StudentId, ExamId),
    FOREIGN KEY (StudentId) REFERENCES Students(Id),
    FOREIGN KEY (ExamId) REFERENCES Exams(Id)
);

INSERT INTO Students (Id, Fullname, Point, GroupId) 
VALUES(1, 'Mahammad Hasanov', 85, 1),
      (2, 'Elgun Nacafzade', 92, 2),
	  (3, 'Farid Musayev', 78, 1);

INSERT INTO Groups (Id, [No])
VALUES(1, 101),
      (2, 102),
      (3, 103);

INSERT INTO Exams (Id, SubjectName, StartDate, EndDate)
VALUES(101, 'Math', '2023-07-20', '2023-07-22'),
      (102, 'Physics', '2023-07-21', '2023-07-23'),
      (103, 'Chemistry', '2023-07-22', '2023-07-24');

INSERT INTO StudentExams (StudentId, ExamId, ResultPoint)
VALUES(1, 101, 75),
      (1, 102, 90),
      (2, 101, 88),
      (2, 103, 94),
      (3, 101, 60),
      (3, 103, 85);

SELECT Students.*, Groups.[No]
FROM Students
JOIN Groups ON Students.GroupId = Groups.Id;






