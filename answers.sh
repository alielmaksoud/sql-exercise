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

