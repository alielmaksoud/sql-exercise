SELECT Name FROM students;
SELECT * FROM students
WHERE Age>'30';
SELECT Name FROM students
WHERE Gender='F' AND Age='30';
SELECT Points FROM students
WHERE name='Alex';
INSERT INTO students (Name, Age) VALUES ("Ali", "30");
SELECT Points FROM students
WHERE name='Basma';
UPDATE students
SET Points='310'
WHERE name='Basma';
SELECT Points FROM students
WHERE name='Alex';
UPDATE students
SET Points='180'
WHERE name='Alex';


CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);

INSERT INTO graduates (Name, Age, Gender, Points)
SELECT Name, Age, Gender, Points FROM students
WHERE Name='Layal';
UPDATE graduates
SET Graduation='08/09/2018'
WHERE Name='Layal';
DELETE FROM students WHERE Name='Layal';
SELECT * FROM graduates;


SELECT employees.Name, companies.Name, companies.Date FROM companies INNER JOIN employees ON companies.ID = employees.ID;

SELECT employees.Name FROM companies INNER JOIN employees ON companies.ID = employees.ID WHERE Date<'2000';

SELECT companies.Name FROM companies INNER JOIN employees ON companies.ID = employees.ID WHERE Role='graphic designer';

SELECT MAX(Points) AS highestnumber FROM students;

SELECT AVG(Points) FROM students;

SELECT COUNT(Points) FROM students WHERE points='500';

SELECT Name from students where Name LIKE '%s%';

SELECT Name FROM students GROUP BY Name ORDER BY COUNT(Points) DESC;

