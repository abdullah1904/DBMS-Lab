CREATE DATABASE University;

USE University;

CREATE TABLE Student(
    id INT PRIMARY KEY IDENTITY(1,1),
    firstName VARCHAR(256) NOT NULL,
    lastName VARCHAR(256) NOT NULL,
    DOB DATE CHECK(DOB < CONVERT(DATE, GETDATE()))
);

INSERT INTO Student(firstName,lastName,DOB) 
VALUES  ('Muhammad Abdullah','Zahid Mehmood','2004-09-01'),
		('Mirza Sufiyan Ahmad','Mirza Maqbool Ahmad','2000-07-25'),
        ('Asim Shehzad','Shehzad Ali','2002-10-15'),
        ('Noman','Mehmood','1999-12-13'),
		('Ch. Ahmad', 'Ahmad Sufiyan','2003-12-25');

INSERT INTO Student(firstName,lastName,DOB) 
VALUES  ('Muhammad Abdullah','Zahid Mehmood','2024-02-20');

CREATE TABLE Courses(
	courseId INT PRIMARY KEY,
	courseName VARCHAR(256) NOT NULL,
	creditHour INT CHECK(creditHour >= 0)
);

INSERT INTO Courses(courseId,courseName,creditHour)
VALUES	(112,'Programming Fundamentals',3),
		(122,'Object-Oriented Programming',3),
		(214,'Data Structures and Algorithms',3),
        (225,'Database Systems',3),
		(226,'Design and Analysis of Algorithms',3);

INSERT INTO Courses(courseId, courseName, creditHour) 
VALUES  (121,'Psychology',-9);

CREATE TABLE Enrollments(
	enrollId INT PRIMARY KEY,
	studentId INT UNIQUE,
	courseId INT UNIQUE,
	enrollDate DATE NOT NULL,
	FOREIGN KEY(studentId) REFERENCES Student(id),
	FOREIGN KEY(courseId) REFERENCES Courses(courseId)
);

INSERT INTO Enrollments(enrollId,studentId,courseId,enrollDate) 
VALUES	(525,1,112,'2022-12-05'),
		(526,2,122,'2023-04-15'),
		(527,3,214,'2023-10-01'),
		(528,4,225,'2024-01-15'),
		(529,5,226,'2024-01-20');

INSERT INTO Enrollments(enrollId,studentId,courseId,enrollDate)
VALUES (530,2,112,'2023-04-15');