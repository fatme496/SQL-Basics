SELECT * FROM students;

SELECT * FROM students WHERE Age > 30;

SELECT Name FROM students WHERE Gender='F' AND Age > 30;

SELECT Points FROM students WHERE Name='Alex';

INSERT INTO students VALUES (14,'Fatme','21','F','100');

UPDATE students SET Points=((SELECT Points FROM students WHERE name='Basma')+20) WHERE name='Basma';

UPDATE students
SET Points=((SELECT Points FROM students WHERE Name='Alex')-10)
WHERE name='Alex';

#Creating table graduates

CREATE TABLE graduates (
ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
Name TEXT NOT NULL UNIQUE,
Age INTEGER,
Gender TEXT,
Points INTEGER,
Graduation TEXT
);

#Problem 10:Copy Layal's data
INSERT INTO graduates (ID,Name,Age,Gender,Points) VALUES (4,'Layal','18','F',190);

#Problem 11:
UPDATE graduates
SET Graduation='08/09/2018'
WHERE name='Layal';

#Problem 12:
DELETE FROM students WHERE name='Layal';

#Problem 13:Commit ("Creating Table")

#Problem 14:
SELECT employees.Name, companies.Name, companies.Date 
FROM employees 
INNER JOIN companies 
ON employees.Company=companies.Name;

#Problem 15:
SELECT employees.Name 
FROM employees INNER JOIN companies 
ON employees.Company=companies.Name 
WHERE Date > 2000;

#Problem 16:
SELECT companies.Name 
FROM employees INNER JOIN companies 
ON employees.Company=companies.Name 
WHERE employees.Role='Graphic Designer';

# or SELECT Company FROM employees WHERE Role='Graphic Designer';

#Problem 17:Commit("Joins")
