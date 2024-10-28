-- JOINS AND UNION
/*
Consider the Country table and Persons table that you created earlier and perform the following: 
(1)Perform inner join, Left join, and Right join on the tables.
(2)List all distinct country names from both the Country and Persons tables. 
(3)List all country names from both the Country and Persons tables, including duplicates. 
(4)Round the ratings of all persons to the nearest integer in the Persons table
*/
USE ENTRI;
DESC country;
DESC persons;
SELECT * FROM country;
SELECT * FROM persons;

-- (1)Perform inner join, Left join, and Right join on the tables.
-- (A)INNER JOIN
SELECT Persons.Fname, Persons.Lname, Persons.Rating, Country.Country_name, Country.Population
FROM Persons
INNER JOIN Country ON Persons.Country_Id = Country.Id;

-- (B)LEFT JOIN
SELECT Persons.Fname, Persons.Lname, Persons.Rating, Country.Country_name, Country.Population
FROM Persons
LEFT JOIN Country ON Persons.Country_Id = Country.Id;

-- (C) RIGHT JOIN
SELECT Persons.Fname, Persons.Lname, Persons.Rating, Country.Country_name, Country.Population
FROM Persons
RIGHT JOIN Country ON Persons.Country_Id = Country.Id;


-- (2)List all distinct country names from both the Country and Persons tables. 
SELECT DISTINCT Country_name FROM Country
UNION
SELECT DISTINCT Country_name FROM Persons;

-- (3)List all country names from both the Country and Persons tables, including duplicates. 
SELECT Country_name FROM Country
UNION ALL
SELECT Country_name FROM Persons;

-- (4)Round the ratings of all persons to the nearest integer in the Persons table
SELECT Id, Fname, Lname, ROUND(Rating, 0) AS RoundedRating
FROM Persons;




