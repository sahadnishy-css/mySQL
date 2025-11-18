--add all
INSERT INTO books(id,title,author,price,stock)
VALUES (1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);

--show product with price less than 450 and stock more than 30
SELECT*FROM books
WHERE price<450 AND stock<30;
--update the deep work
UPDATE books 
SET stock=45,price=420
WHERE title='Deep Work';
--delete Ikigai title
DELETE FROM books
WHERE title='Ikigai';
--show average 
SELECT AVG(price),COUNT(8)
FROM books;
--display top 3 most expensive books.
 SELECT price
FROM books
ORDER BY price DESC
LIMIT 3;