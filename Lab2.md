<h1 align="center">DBMS Lab</h1>
<h3>Lab 2 Tasks:</h3>
<p>1. Drop `name` column from the table `Author` and add `First name` and `Last name` columns in it.</p>

```sql
ALTER TABLE Author DROP COLUMN name;
ALTER TABLE AUTHOR ADD firstName varchar(100);
ALTER TABLE AUTHOR ADD lastName varchar(100);
-- Inserting Data
UPDATE Author set firstName = 'John', lastName = 'Well' where id = 1;
UPDATE Author set firstName = 'Robert', lastName = 'Green' where id = 2;
UPDATE Author set firstName = 'George', lastName = 'Paterson' where id = 3;
```

<p>2. Drop `authorId` column from the table `Books` and add `authorEmail` columns in it.</p>

```sql
ALTER TABLE Books DROP COLUMN authorId;
ALTER TABLE Books ADD authorEmail varchar(100);
-- Inserting Data
UPDATE Books set authorEmail = 'johnwell@yahoo.com' where id = 1;
UPDATE Books set authorEmail = 'robertgreen@uet.com' where id = 2;
UPDATE Books set authorEmail = 'georgepaterson23@google.com' where id = 3;
```