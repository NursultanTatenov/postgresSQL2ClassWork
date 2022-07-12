--DDL
CREATE TABLE students(
                         id SERIAL PRIMARY KEY ,
                         name VARCHAR(50),
                         e_mail VARCHAR(50),
                         age INT
);

INSERT INTO students(name, e_mail, age)
VALUES ('Dastan','d@gmail.com',20),
       ('Datka','dat@gmail.com',20),
       ('Mavlyan','m@gmail.com',20),
       ('Janyl','j@gmail.com',20);

DROP TABLE students;

ALTER TABLE students ADD UNIQUE (e_mail);
ALTER TABLE students RENAME name TO first_name;
ALTER TABLE students RENAME first_name TO name;
ALTER TABLE students drop first_name;
ALTER TABLE students ADD COLUMN first_name VARCHAR;
--DML
--SELECT -выбрать данные "*"- oznochaet vse
SELECT *FROM students;

--UPDATE-izmenit sushestvuyushie dannye
UPDATE students SET name='Jaulan' WHERE id=3;
--DELETE - udalyat dannye
DELETE FROM students
--INSERT-- dobavit novye dannye