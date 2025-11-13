//add 4 students details .
INSERT INTO student(name,age,department,grade)
VALUES('deppu','27','cs','70'),
('archana','23','physics','70'),
('karthika','27','commerce','79'),
('akhil','22','english','50');

// student with age grater than 20.
SELECT * FROM students WHERE age > 20;
// students in computer science and physics departments
SELECT * FROM students WHERE department IN ('computer science', 'physics');
// students with grade higher than 90
SELECT * FROM students WHERE grade = 90;
// students with grade between 70 and 90
SELECT * FROM students WHERE grade BETWEEN 70 AND 90;