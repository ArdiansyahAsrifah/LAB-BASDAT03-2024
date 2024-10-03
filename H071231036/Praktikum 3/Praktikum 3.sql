USE library 

INSERT INTO author (name, nationality)
VALUES ("Tere liye", "Indonesian"),
		("J.K. Rowling", "British"),
		("Andrea Hirata", '' );

INSERT INTO books (isbn, title, `author name`, published_year, genre, copies_available)
VALUES (7040289780375, "ayah", "Andrea Hirata", 2015, "Fiction", 15),
(9780375704025, "Bumi", "Tere Liye",2014, "fantasy", 5),
(8310371703024, "Bulan", "Tere Liye",2015, "fantasy", 3),
(9780747532699, "Harry Potter and the Philosopher's Stone","J.K. Rowling",1997,'',10),
(7210301703022, "The Running Grave","J.K. Rowling",2016, "Fiction", 11);

INSERT INTO members (full_name, email, phone_number,join_date,membership_type)
VALUES ("John Doe", "John.doe@example.com", NULL, "2023-04-29", ''),
("Alice Johnson","alice.johnson@eample.com", 1231231231, "2023-05-01", "Standar"),
("Bob Williams","bob.williams@example.com",3213214321,"2023-06-20","Premium");

INSERT INTO borrowings (member_id,book_id, member_name, book_title, borrow_date, retur_date)
VALUES (10,4, "john doe", "Harry potter and the philospher's stone","2023-07-10", "2023-07-25"),
(12,1, "Bob Williams", "Ayah", "2023-08-01", NULL),
(11,5, "Alice Johnson", "The Running Grave", "2023-09-06", "2023-09-10"),
(11,3, "Alice Johnson", "Bulan", "2023-09-06", NULL),
(12,2, "Bob Williams", "Bumi", "2023-09-10", NULL);

UPDATE books
SET copies_available = 14
WHERE title = "ayah"

UPDATE books
SET copies_available = 4
WHERE title = "bumi"

UPDATE books 
SET copies_available = 2
WHERE title = "bulan"

UPDATE members
SET membership_type = "standar"
WHERE full_name = "bob williams"

UPDATE members
SET membership_type = ''
WHERE full_name = "Alice johnson"






