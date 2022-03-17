-- VERY EASY CHALLENGE --
CREATE DATABASE cars1;
CREATE TABLE dream_cars (
id INT NOT NULL AUTO_INCREMENT,
make VARCHAR (100),
model VARCHAR (100),
car_year INT,
PRIMARY KEY(id)
);
INSERT INTO dream_cars (make, model, car_year)
VALUES
('BMW', '328i', 2010),
('Jaguar', 'S TYPE', 2008),
('Lexus', 'GS 350', 2019);
SELECT *
FROM dream_cars;
INSERT INTO dream_cars (make, model, car_year)
VALUES
('Nissan', 'Sentra', 2022),
('Mercedes', 'G WAGON', 2015)
-- VERY EASY CHALLENGE --
-- EASY CHALLENGE --
CREATE DATABASE library;
USE library;
CREATE TABLE books (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR (200),
publish_date INT,
first_name VARCHAR (100),
last_name VARCHAR (100)
);
INSERT INTO books (title, publish_date, first_name, last_name)
VAlUES
('Atomic Habits', 2018, 'James', 'Clear'),
('Ugly Love', 2014, 'Colleen', 'Hoover'),
('Rich Dad Poor Dad', 2017, 'Robert', 'Kiyosaki'),
('It Ends with Us', 2016, 'Colleen', 'Hoover'),
('The Lightning Rod', 2022, 'Brad', 'Meltzer');
INSERT INTO books (title, publish_date, first_name, last_name)
VAlUES
('The Cat in The Hat', 1957, 'Dr.', 'Seuss'),
('Golden Girls', 1985, 'Jay', 'Sandrich');
SELECT COUNT(*) FROM top_books;
DELETE FROM `books`
WHERE publish_date IS NOT NULL
ORDER BY publish_date DESC
LIMIT 1;
-- EASY CHALLENGE --
-- MEDIUM CHALLENGE --
CREATE DATABASE films;
USE films;
CREATE TABLE movies (
movies_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR (225),
release_date INT,
rating INT
);
INSERT INTO movies (title, release_date, rating)
VALUES
('Seven Pounds', 2008, 8.5),
('Spider-Man: No Way Home', 2021, 8.5),
('Creed', 2016, 8.3),
('Interstellar', 2014, 8.6),
('The Prestige', 2006, 8.5),
('Se7en', 1995, 8.6),
('Pulp Fiction', 1994, 8.9),
('The Shining', 1980, 8.4),
('The Wolf of Wall Street', 2013, 8.2),
('Shutter Island', 2010, 8.2);
SELECT * FROM movies
WHERE title LIKE '%s%'
ORDER BY release_date DESC;
 -- MEDIUM CHALLENGE --
 -- HARD CHALLENGE --
SET SQL_SAFE_UPDATES = 0;
CREATE DATABASE films;
USE films;
CREATE TABLE movies (
movies_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR (225),
release_date INT,
rating INT
);
INSERT INTO movies (title, release_date, rating)
VALUES
('The Lion King', 1994, 8.5),
('Spider-Man: No Way Home', 2021, 8.5),
('Joker', 2019, 8.3),
('Avatar', 2009, 8.6),
('The Prestige', 2006, 8.5),
('Se7en', 1995, 8.6),
('Pulp Fiction', 1994, 8.9),
('The Batman', 2022, 8.4),
('The Wolf of Wall Street', 2013, 8.2),
('Shutter Island', 2010, 8.2);
SELECT * FROM movies
WHERE title LIKE '%s%'
ORDER BY release_date DESC;
ALTER TABLE movies ADD director_firstname VARCHAR(30);
ALTER TABLE movies ADD director_lastname VARCHAR(30);
UPDATE movies SET director_firstname = 'Seth',
director_lastname= 'Mula' WHERE movies_id >= 1 ;
SELECT director_firstname, director_lastname,
CONCAT (director_firstname,' ', director_lastname) AS director
FROM movies;
SELECT * FROM movies ORDER BY director_lastname ASC;
DELETE FROM movies WHERE director_lastname BETWEEN 'r%' AND 'z%';
SELECT * FROM movies LIMIT 3;
-- HARD CHALLENGE --
-- VERY HARD CHALLENGE --
CREATE DATABASE cars2;
USE cars2;
CREATE TABLE best_cars(
make VARCHAR(20),
model VARCHAR(20),
year INT
);
INSERT INTO best_cars (make, model, year)
VALUES
('Porsche','911', 2022),
('Mitsubishi', 'Eclipse', 1999);
INSERT INTO best_cars (make, model, year)
VALUES
('Nissan','Sentra', 2021),
('Dodge','Hellcat', 2022),
('Dodge', 'Demon', 2022);
ALTER TABLE best_cars ADD price INT;
ALTER TABLE best_cars ADD color VARCHAR(20);
INSERT INTO best_cars (make, model, year, price, color)
VALUES
('Porsche','911', 2022,  101200, 'blue'),
('Mitsubishi', 'Eclipse', 1999,  17910, 'blue'),
('Nissan','Sentra', 2021, 20000, 'blue'),
('Dodge','Hellcat', 2022, 65125, 'black'),
('Dodge', 'Demon', 2022, 84995, 'purple');
SELECT make, model,
CONCAT (make, ' ', model)
AS car FROM best_cars;
SELECT make, COUNT(*) FROM best_cars GROUP BY make;












