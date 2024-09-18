CREATE DATABASE library

USE library

CREATE TABLE author (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL 
)


CREATE TABLE books (
	id INT PRIMARY KEY AUTO_INCREMENT,
	isbn VARCHAR(13),
	title VARCHAR(100),
	id_author INT,
	FOREIGN KEY(id_author) REFERENCES author(id)
)
ALTER TABLE author
	ADD nationality VARCHAR(50)


ALTER TABLE books 
	MODIFY isbn VARCHAR(13) UNIQUE

DESCRIBE author 
DESCRIBE books

ALTER TABLE books
ADD published_year YEAR NOT NULL

ALTER TABLE books 
ADD genre VARCHAR(50)
ALTER TABLE books 
ADD copies_available INT NOT NULL  

CREATE TABLE members(
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	phone_number CHAR(10),
	join_date DATE NOT NULL,
	membership_type VARCHAR(50) NOT NULL
) 
CREATE TABLE borrowings (
	id INT PRIMARY KEY AUTO_INCREMENT, 
	member_id INT NOT NULL ,
	FOREIGN KEY(member_id) REFERENCES members(id),
	book_id INT NOT NULL,
	FOREIGN KEY(book_id) REFERENCES books(id),
	borrow_date DATE NOT NULL,
	retur_date DATE
)

DESCRIBE members;
DESCRIBE borrowings;
DESCRIBE books;
DESCRIBE author;
	
	
	



