-- nomor 1
-- membuat databse dengan nama library
-- CREATE DATABASE library
-- memakai database
-- USE library

-- membuat tabel authors dengan variabel id dan name
-- CREATE TABLE authors(
-- 	id INT(100) PRIMARY KEY AUTO_INCREMENT,
-- 	name VARCHAR(100) NOT NULL
-- )- )

-- membuat tabel books dengan variabel id, isbn, title, author_id
-- CREATE TABLE books (
-- 	id INT(100) PRIMARY KEY AUTO_INCREMENT,
-- 	isbn VARCHAR(13),
-- 	title VARCHAR(100) NOT NULL,
-- 	author_id INT,
-- 	FOREIGN KEY(author_id) REFERENCES author(id)
-- )


-- nomor 2
-- menambah kolom dengan nama ‘nationality’ pada tabel authors
-- ALTER TABLE authors
-- ADD nationality VARCHAR(50)



-- nomor 3
-- mengubah kolom isbn pada tabel books agar tidak duplikat
-- ALTER TABLE books
-- MODIFY isbn VARCHAR(13) UNIQUE



-- nomor 4 
-- menampilan semua tabel beserta strukturnya
-- DESCRIBE authors;
-- DESCRIBE books;



-- nomor 5

-- mengubah colom nationality pada authors agar tidak boleh null dan id dengan atribut int
-- ALTER TABLE authors
-- MODIFY id INT NOT null,
-- MODIFY nationality VARCHAR(50) NOT NULL;


-- mengubah colom title,isbn,dan author_id agar tidak boleh null dan menambah 3 kolom baru serta atribut id ke int
-- ALTER TABLE books
-- MODIFY id INT NOT null
-- MODIFY title VARCHAR(150) NOT NULL,
-- MODIFY isbn CHAR(13) NOT NULL UNIQUE,
-- ADD published_year YEAR NOT NULL,
-- ADD genre VARCHAR(50) NOT NULL,
-- ADD copies_available INT NOT NULL;

-- SHOW CREATE TABLE books;

-- ALTER TABLE books
-- DROP FOREIGN KEY books_ibfk_1;

-- ALTER TABLE books
-- MODIFY author_id INT NOT NULL;

-- ALTER TABLE books
-- ADD CONSTRAINT books_ibfk_1 FOREIGN KEY (author_id) REFERENCES authors(id);



-- membuat tabel members
-- CREATE TABLE members(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	first_name VARCHAR(50) NOT NULL,
-- 	last_name VARCHAR(50) NOT NULL,
-- 	email VARCHAR(100) UNIQUE KEY NOT NULL,
-- 	phone_number CHAR(10),
-- 	join_date DATE NOT NULL,
-- 	membership_type VARCHAR(50) NOT NULL
-- )



-- membuat tabel borrowings dengan 2 colom yang mereferensi ke members dan books
-- CREATE TABLE borrowings(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	member_id INT NOT NULL,
-- 	book_id INT  NOT NULL,
-- 	borrow_date DATE NOT NULL,
-- 	return_date DATE,
-- 	FOREIGN KEY(member_id) REFERENCES members(id),
-- 	FOREIGN KEY(book_id) REFERENCES books(id)
-- 	
-- )









