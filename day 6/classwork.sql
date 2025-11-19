--add books in first table
INSERT INTO books(id,title,author,genre,price,copy_sold)
VALUES (1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);
--add books in second table
INSERT INTO bestsellers(id,title,author,genre,price,copy_sold)
VALUES 
(4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);

--show books price greater than 400 in books
SELECT * FROM books
WHERE price>400;
--Show the average price of books in the books table.
SELECT AVG(price)
FROM books;
--Display the number of books in the books table using a count.
SELECT COUNT(id)
FROM books;
--Show the title and author from books table with aliases Book Title and Written By.
SELECT title AS 'Book Title',author AS 'Written By'
FROM books;