CREATE DATABASE college;
CREATE DATABASE iTone_Muisc;

USE college;

CREATE TABLE student (
	rollno INT,
    name VARCHAR(30),
    age INT
);
INSERT INTO student
VALUES
(23,"Dipayan Seth",21),
(24,"Hariom Kumar",20),
(25,"Harshvardhan Seth",19);

SELECT * FROM student;

CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;
CREATE TABLE users(
	id INT,
    age INT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT CHECK (age >= 13)
);
INSERT INTO users
VALUES
(1,20,"Hariom Kumar","7hari@gmail.com","98","113"),
(2,16,"soham Kumar","766742soham@gmail.com","100","112");

SELECT*FROM users;

CREATE DATABASE IF NOT EXISTS Techno;
USE Techno;
CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(70),
    salary INT
    
);
INSERT INTO teacher
(id,name,subject,salary)
VALUES
(23,"Ajay","Mathematics",45000),
("24","HARIOM KUMAR","Physics",120000),
("33","Chetan","Chemistry",100000),
("48","Divya","Economics",390000);

SELECT*FROM teacher;

SET SQL_SAFE_UPDATES = 0;

UPDATE teacher
SET salary=45000
WHERE name="Ajay";

UPDATE teacher
SET salary=39000
WHERE name="Divya";

SELECT*FROM teacher
WHERE salary>=50000;

DESC teacher;

ALTER TABLE teacher 
CHANGE COLUMN salary ctc INT;

select * from teacher;

ALTER TABLE teacher
ADD COLUMN city VARCHAR(50) DEFAULT "GUrgaon";

ALTER TABLE teacher
DROP COLUMN ctc;

UPDATE teacher
SET ctc=ctc+0.25*ctc



