<h1 align="center">DBMS Lab</h1>
<h3>Lab 1 Tasks:</h3>
<p>1. Create a new database named `LibraryDB`.</p>

```sql
CREATE DATABASE LibraryDB;
```

<p>2. Create the following tables within the `LibraryDB` database:</p>
<ul>
    <li>`Authors`: Contains information about authors, including `AuthorID` (unique 
identifier), `AuthorName`, and `BirthYear`.</li>
    <li> `Books`: Contains information about books, including `BookID` (unique 
identifier), `Title`, `Genre`, and `AuthorID`</li>
</ul>

```sql
use LibraryDB;
CREATE TABLE Author(
    id int unique,
    name varchar(20),
    birthYear int
);
CREATE TABLE Books(
    id int unique,
    title varchar(20),
    genre varchar (20),
    authorId int,
);
```

<p>3. Insert at least three records into each of the created tables (`Authors`, `Books`). 
Ensure that the data represents a variety of authors, books.</p>

```sql
INSERT INTO Author(id,name,birthYear) 
values  (1,'Robert Green',1900),
        (2,'Max Well',1870),
        (3,'Napoleon Hill',1945);
INSERT INTO Books(id,title,genre, authorId)
values  (1,'50 Laws','Self Help',1),
        (2,'Revolution','Historic',2),
        (3,'Think and Grow Rich','Self Help',3);
```

<p>4. Write SQL queries to retrieve the information:</p>

```sql
SELECT * FROM Author;
SELECT * FROM Books;
```