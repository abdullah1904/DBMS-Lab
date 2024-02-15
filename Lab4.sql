CREATE DATABASE University;
USE University;
CREATE TABLE Students(
    studentId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    DOB DATE NOT NULL
); 

INSERT INTO Students(firstName, lastName, email, DOB) 
VALUES  ('Muhammad Abdullah','Zahid Mehmood', 'mabdullahzahid782@gmail.com','2004-09-01'),
        ('Muhammad Abu Bakar','Zahid Mehmood', 'abubakar240@gmail.com','2008-12-10'),
        ('Mirza Sufiyan Ahmad', 'Mirza Maqbool Ahmad', 'mirza@gmail.com','2002-06-15'),
        ('Asim Shahzad','Ahmad Ali','asim@yahoo.com','2003-10-15');

SELECT * FROM Students;

UPDATE Students SET email = 'abdullah1904@gmail.com' where studentId = 1;

INSERT INTO Students(firstName,lastName,email,DOB)
VALUES('Muhammad Ali', NULL, NULL,'2025-12-10');

INSERT INTO Students(firstName,lastName,email,DOB)
VALUES('John', 'Wick','asim@yahoo.com','1990-01-01');