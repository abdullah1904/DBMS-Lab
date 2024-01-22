CREATE DATABASE [IF NOT EXIST]LibraryDB;
use LibraryDB;
CREATE TABLE [IF NOT EXIST] Author(
    id int unique,
    name varchar(20),
    birthYear int
);
CREATE TABLE [IF NOT EXIST] Books(
    id int unique,
    title varchar(20),
    genre varchar (20),
    authorId int unique,
);

INSERT INTO Author(id,name,birthYear) 
values  (1,'Robert Green',1900),
        (2,'Max Well',1870),
        (3,'Napoleon Hill',1945);
INSERT INTO Books(id,title,genre, authorId)
values  (1,'50 Laws','Self Help',1),
        (2,'Revolution','Historic',2),
        (3,'Think and Grow Rich','Self Help',3);

SELECT * FROM Author;
SELECT * FROM Books;