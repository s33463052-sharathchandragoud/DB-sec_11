CREATE DATABASE IF NOT EXISTS bookflow_db;
USE bookflow_db;
CREATE TABLE books (
 book_id INT AUTO_INCREMENT PRIMARY KEY,
 title VARCHAR(255) NOT NULL,
 isbn VARCHAR(13) NOT NULL UNIQUE,
 published_year INT,
 CONSTRAINT chk_published_year CHECK (published_year < 2027)
);
CREATE TABLE members (
 member_id INT AUTO_INCREMENT PRIMARY KEY,
 full_name VARCHAR(100) NOT NULL,
 email VARCHAR(150) NOT NULL UNIQUE
);
DESCRIBE books;
DESCRIBE members;
INSERT INTO books (title, isbn, published_year) VALUES
('The Alchemist', '9780061122415', 1988),
('Clean Code', '9780132350884', 2008),
('Atomic Habits', '9780735211292', 2018);
INSERT INTO members (full_name, email) VALUES
('Anil Kumar', 'anil.kumar@example.com'),
('Priya Sharma', 'priya.sharma@example.com'),
('Ravi Verma', 'ravi.verma@example.com');
SELECT * FROM books;
SELECT * FROM members;
INSERT INTO books (title, isbn, published_year)
VALUES ('Fake Copy', '9780061122415', 2000);
INSERT INTO books (title, isbn, published_year)
VALUES (NULL, '9999999999999', 2010);
INSERT INTO books (title, isbn, published_year)
VALUES ('Time Traveler', '8888888888888', 2030);
INSERT INTO members (full_name, email)
VALUES ('Anil Clone', 'anil.kumar@example.com');