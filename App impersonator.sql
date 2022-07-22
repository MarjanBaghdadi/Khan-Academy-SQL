/*
Think about your favorite apps, and pick one that stores your data- 
like a game that stores scores, an app that lets you post updates, 
etc. Now in this project, you're going to imagine that the app stores
your data in a SQL database (which is pretty likely!), and write SQL
statements that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.

*/



/* What does the app's SQL look like? */

--Creating the table
CREATE TABLE ptracker(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    Name TEXT, 
    Job TEXT
    );

--Inserting rows in the table
INSERT INTO ptracker(Name, Job) VALUES("Marjan", "Data Analyst");
INSERT INTO ptracker(Name, Job) VALUES("Mahsa", "Student");
INSERT INTO ptracker(Name, Job) VALUES("Maryam", "Architect");
INSERT INTO ptracker(Name, Job) VALUES("Maria", "Sales Person");
INSERT INTO ptracker(Name, Job) VALUES("Mady", "Police Woman");
INSERT INTO ptracker(Name, Job) VALUES("Maika", "Teacher");

--selecting all the rows for display
SELECT * FROM ptracker;

--Updating one of the rows
UPDATE ptracker SET Name="Madyyy" WHERE Name="Mady";
SELECT * FROM ptracker;

--Deleting one of the rows
DELETE FROM ptracker WHERE Name="Madyyy";
SELECT * FROM ptracker;


