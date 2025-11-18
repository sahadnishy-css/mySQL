--add 3 student
INSERT INTO students2 (id,name,course,fees_paid,status)
VALUES (1, 'Alice', 'Web Development', 5000, 'Inactive'),
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
(3, 'Charlie', 'UI/UX Design', 4000, 'Active');

--fees more than 5000              
SELECT * FROM students2
 WHERE fees_paid > 5000;

--Active for web
UPDATE students2
SET status = 'Active'
WHERE course = 'Web Development';

SELECT * FROM students2 WHERE course = 'Web Development';

UPDATE students2
SET fees_paid = fees_paid + 1000
WHERE course = 'Data Science';

SELECT * FROM students2 WHERE course = 'Data Science';


UPDATE students2
SET status = 'Inactive', fees_paid = fees_paid - 500
WHERE id = 3;

SELECT * FROM students2 WHERE id = 3;

