--add 4 mobiles
INSERT INTO mobiles(id,brand,model,price,stock)
VALUES(1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10); 
--mobiles cost more than 13000 or less than 15 stock
SELECT * FROM mobiles
WHERE price >'13000' OR stock<'15';
--change price and shock
UPDATE mobiles
SET price='12500',stock=stock+5
WHERE model='Narzo 50';
--delete the id 2
DELETE FROM mobiles
WHERE id=2;
--lowest and highest price 
SELECT MIN(price),MAX(price)
FROM mobiles;
--find total stock 
SELECT COUNT(*)
FROM mobiles
WHERE stock;
-- top two expensive mobiles
 SELECT price
FROM mobiles
ORDER BY price DESC
LIMIT 2;