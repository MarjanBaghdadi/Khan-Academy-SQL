/* Create table about the people and what they do here */

CREATE TABLE famous_people(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
    );
    
CREATE TABLE famous_people_jobs(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    job TEXT
    );
    
CREATE TABLE famous_people_marritial_status(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    status TEXT
    );


--Creating the famous people list:
INSERT INTO famous_people(name) VALUES ("Obama");
INSERT INTO famous_people(name) VALUES ("JJ Cale");
INSERT INTO famous_people(name) VALUES ("Maryam Mirzakhani");
INSERT INTO famous_people(name) VALUES ("Hilary Clinton");

SELECT * FROM famous_people;



--Creating the famous people's jobs list:
INSERT INTO famous_people_jobs(name, job) VALUES ("Obama", "President");
INSERT INTO famous_people_jobs(name, job) VALUES ("JJ Cale", "Singer");
INSERT INTO famous_people_jobs(name, job) VALUES ("Maryam Mirzakhani", "Mathematician");

SELECT * FROM famous_people_jobs;



--Creating the famous people's marritial status list:
INSERT INTO famous_people_marritial_status(name, status) VALUES ("Obama", "Married");
INSERT INTO famous_people_marritial_status(name, status) VALUES ("JJ Cale", NULL);
INSERT INTO famous_people_marritial_status(name, status) VALUES ("Maryam Mirzakhani", "Married");

SELECT * FROM famous_people_marritial_status;


--Join two tables to see the jobs and status in one list:
SELECT j.id, j.name, j.job, s.status
FROM famous_people_jobs j
JOIN famous_people_marritial_status s
ON j.id = s.id;


--Join the name table and status
SELECT p.id, p.name, m.status
FROM famous_people p
JOIN famous_people_marritial_status m
ON p.id = m.id;


--Join the name table and status
SELECT p.id, p.name, m.status
FROM famous_people p
LEFT JOIN famous_people_marritial_status m
ON p.id = m.id;


-- OUTER JOIN
SELECT p.id, p.name, m.status
FROM famous_people p
LEFT JOIN famous_people_marritial_status m
ON p.id = m.id
UNION
SELECT p.id, p.name, m.status
FROM famous_people_marritial_status m
LEFT JOIN famous_people p
ON m.id = p.id;
