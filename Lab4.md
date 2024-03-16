<h1 align="center">DBMS Lab</h1>
<h3>Lab 4 Tasks:</h3>
<br>Consider a database for managing information about students in a university. Create a table 
named Students with the following specifications:</p>
<b>StudentID:</b>
<li>Data Type: INTEGER</li>
<li>Constraint: Primary Key, Not Null</li>
<li>Default: Auto-incrementing value</li>
<br/>
<b>FirstName:</b>
<li>Data Type: VARCHAR(50)</li> 
<li>Constraint: Not Null </li>
<br/>
<b>LastName:</b>
<li>Data Type: VARCHAR(50)</li> 
<li>Constraint: Not Null </li>
<br/>
<b>Email:</b>
<li>Data Type: VARCHAR(100)</li>
<li>Constraint: Unique, Not Null</li> 
<br/>
<b>DateOfBirth:</b>
<li>Data Type: DATE</li>
<li>Constraint: Not Null</li></p>

<hr/>
<p>Write an SQL statement to create the Students table with the specified columns and 
constraints.</p>

```sql
CREATE DATABASE University;
USE University;
CREATE TABLE Students(
    studentId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    DOB DATE NOT NULL
);
```

<p>Insert at least three rows of sample data into the Students table, ensuring that each 
student has a unique email address.</p>

```sql
INSERT INTO Students(firstName, lastName, email, DOB) 
VALUES  ('Muhammad Abdullah','Zahid Mehmood', 'mabdullahzahid782@gmail.com','2004-09-01'),
        ('Muhammad Abu Bakar','Zahid Mehmood', 'abubakar240@gmail.com','2008-12-10'),
        ('Mirza Sufiyan Ahmad', 'Mirza Maqbool Ahmad', 'mirza@gmail.com','2002-06-15'),
        ('Asim Shahzad','Ahmad Ali','asim@yahoo.com','2003-10-15');
```

<p>Write an SQL query to retrieve the information of all students from the Students 
table.</p>

```sql
SELECT * FROM Students;
```

<p> Update the email address of the student with StudentID 1 to a new unique email 
address.</p>

```sql
UPDATE Students SET email = 'abdullah1904@gmail.com' where studentId = 1;
```

<p>Try to insert a new student into the table without providing a value for the FirstName column. Observe the result and explain any errors or constraints that prevent the insertion.</p>

```sql
INSERT INTO Students(firstName,lastName,email,DOB) VALUES('Muhammad Ali', NULL, NULL,'2025-12-10');
```

<p>Try to insert a new student with an email address that already exists in the table. Observe the result and explain any errors or constraints that prevent the insertion.</p>

```sql
INSERT INTO Students(firstName,lastName,email,DOB)
VALUES('John', 'Wick','asim@yahoo.com','1990-01-01');
```