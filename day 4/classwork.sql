
 
-- Add 3 books 
INSERT INTO books (book_id, title, author, price, stock) VALUES
(1, 'Learn SQL', 'John Smith', 400, 10),
(2, 'Mastering Python', 'Jane Doe', 600, 5),
(3, 'HTML & CSS Basics', 'Alan Webb', 300, 8);

-- Increase the price
UPDATE books
SET price = price + 50,
	stock = 12
WHERE title = 'Learn SQL';

-- Decrease the stock 
UPDATE books
SET stock = stock - 2
WHERE price > 500;

-- Delete the book
DELETE FROM books
WHERE book_id = 3;

