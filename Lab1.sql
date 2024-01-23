ALTER TABLE Author DROP COLUMN name;
ALTER TABLE Books DROP COLUMN authorId;

ALTER TABLE AUTHOR ADD firstName varchar(100);
ALTER TABLE AUTHOR ADD lastName varchar(100);

ALTER TABLE Books ADD authorEmail varchar(100);

UPDATE Author set firstName = 'John', lastName = 'Well' where id = 1;
UPDATE Author set firstName = 'Robert', lastName = 'Green' where id = 2;
UPDATE Author set firstName = 'George', lastName = 'Paterson' where id = 3;

UPDATE Books set authorEmail = 'johnwell@yahoo.com' where id = 1;
UPDATE Books set authorEmail = 'robertgreen@uet.com' where id = 2;
UPDATE Books set authorEmail = 'georgepaterson23@google.com' where id = 3;