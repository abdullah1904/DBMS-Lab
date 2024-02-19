<h1 align="center">DBMS Lab</h1>
<h3>Lab 3 Tasks:</h3>
<p>Assume you are tasked with managing an employees database for a company. The initial structure of the employees table is as follows:</p>

```sql
-- Create 'Employee' table
CREATE TABLE Employee(
	employeeId int,
	firstName char(20),
	secondName char(20),
	departmentId int,
	salary int,
	PRIMARY KEY(employeeId)
);
```

<hr/>

<p>1. Populate the Employee table with Data</p>

```sql
INSERT INTO Employee(employeeId, firstName, secondName, departmentId, salary)
values	(1,'John','Wick',101,1000),
		(2,'Jack','Reacher',102,500),
		(3,'Tony','Stark',103,900),
		(4,'Harry','Potter',104,250),
		(5,'Bruce','Banner',105,740),
		(6,'Tom','Cruise',106,1200),
		(7,'Steven','Strange',107,900),
		(8,'Natasha','Romanoff',108,340),
		(9,'Thor','Odinson',109,2215),
		(10,'Peter','Parker',110,45);
```

<p>2. Increase the salary by 8% for employees in the 'HR' department (department_id = 101)</p>

```sql
UPDATE Employee SET salary = salary + salary*0.08 WHERE departmentId = 101;
```

<p>3. Delete the record for the employee with ID 3</p>

```sql
DELETE FROM Employee WHERE employeeId = 3;
```

<p>4. Add a new column 'position' to the employees table, which represents the job position of 
each employee</p>

```sql
ALTER TABLE Employee ADD position varchar(30);

UPDATE Employee SET position = 'HR Manager' WHERE departmentId = 101;
UPDATE Employee SET position = 'Marketing' WHERE departmentId = 102;
UPDATE Employee SET position = 'Finance Assistant' WHERE departmentId = 104;
UPDATE Employee SET position = 'Legal Lawyer' WHERE departmentId = 105;
UPDATE Employee SET position = 'Tech Incharge' WHERE departmentId = 106;
UPDATE Employee SET position = 'Initiatives Chief' WHERE departmentId = 107;
UPDATE Employee SET position = 'Discipline Officer' WHERE departmentId = 108;
UPDATE Employee SET position = 'Private Detective' WHERE departmentId = 109;
UPDATE Employee SET position = 'Intern' WHERE departmentId = 110;
```

<p>5. Change the department_id for employees in the 'Marketing' department (department_id = 
102) to 104</p>

```sql
UPDATE Employee SET departmentId = 104 where departmentId = 102;
```

<p>6. Remove the 'department_id' column from the employees table</p>

```sql
ALTER TABLE Employee DROP COLUMN departmentId;
```