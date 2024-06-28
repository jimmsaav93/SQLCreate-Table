--- 25-06-2024 04:56:27
--- SQLite
CREATE TABLE demo_temp (Name varchar(20), Hint TEXT); 
INSERT INTO demo_temp(Name, Hint) SELECT Name, Hint FROM demo; 
DROP TABLE demo; 
ALTER TABLE demo_temp RENAME TO demo;

--- 25-06-2024 04:56:32
--- SQLite
CREATE TABLE demo_temp (Hint TEXT); 
INSERT INTO demo_temp(Hint) SELECT Hint FROM demo; 
DROP TABLE demo; 
ALTER TABLE demo_temp RENAME TO demo;

--- 25-06-2024 04:56:36
--- SQLite
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near ")": syntax error
 ----- 
CREATE TABLE demo_temp (); 
INSERT INTO demo_temp() SELECT  FROM demo; 
DROP TABLE demo; 
ALTER TABLE demo_temp RENAME TO demo;
*****/

--- 25-06-2024 04:56:51
--- SQLite
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: near ")": syntax error
 ----- 
CREATE TABLE demo_temp (); 
INSERT INTO demo_temp() SELECT  FROM demo; 
DROP TABLE demo; 
ALTER TABLE demo_temp RENAME TO demo;
*****/

--- 25-06-2024 05:11:11
--- SQLite
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100),
    genre VARCHAR(50),
    published_year INT,
    isbn VARCHAR(20),
    price DECIMAL(10, 2),
    rating DECIMAL(3, 1),
    stock_count INT
);

