--insert first table
INSERT INTO Employee
VALUES(1,"Raju","Sales",1),
(2,"Sangeetha","sales",3),
(3,"Vinay","Operations",8),
(4,"Abey","Packing",2),
(5,"Thomas","Packing",1),
(6,"Munner","Operations",7),
(7,"Aparna","Sales",3),
(8,"Abid","Operations",9),
(9,"Fathima","Sales",11),
(10,"Varghese","Operations",14);
--insert second table
INSERT INTO exam (Employee_id, Exam_status) VALUES
(2, 'Pass'),
(5, 'Fail'),
(1, 'Fail'),
(8, 'Pass'),
(3, 'Pass'),
(1, 'Pass'),
(6, 'Fail'),
(9, 'Pass'),
(10, 'Pass');
--
ALTER TABLE exam
ADD FOREIGN KEY (Employee_id) REFERENCES employee(id);

--to get employee with more than 5 in sales department
SELECT*
FROM employee
WHERE Leaves > 5  AND Department='sales';
--to get number of employees working in opearation department
SELECT count(Department) AS "Number of employees in Operations Department" 
FROM employee 
WHERE Department='Operations';
--to list employees is each department
SELECT Department, count(Department) AS "Employees in each Department"
FROM employee 
GROUP BY Department;
--to list the department where all its employee altogether took more than 10 leae
SELECT Department
FROM employee
GROUP BY Department
HAVING SUM(Leaves) >10;
--to list all the employees how passed exam
SELECT employee.Name
FROM employee
JOIN exam 
ON employee.id = exam.Employee_id
WHERE exam.Exam_status='pass';
--to list all the employee name who has not attented the exam
SELECT employee.Nameame
FROM employee
LEFT JOIN exam
ON employee.id=exam.Employee_id
WHERE exam.Exam_status IS NULL;