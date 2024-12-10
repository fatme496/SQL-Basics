SELECT * FROM students;

SELECT * FROM students WHERE Age > 30;

SELECT Name FROM students WHERE Gender='F' AND Age > 30;

SELECT Points FROM students WHERE Name='Alex';

INSERT INTO students VALUES (14,'Fatme','21','F','100');

UPDATE students SET Points=(SELECT Points FROM students WHERE name='Basma'+20) WHERE name='Basma';

UPDATE students
SET Points=((SELECT Points FROM students WHERE Name='Alex')-10)
WHERE name='Alex';