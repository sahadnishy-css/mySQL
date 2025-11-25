--
CREATE TABLE students(student_id int PRIMARY KEY AUTO_INCREMENT,name char(50) NOT NULL,email char(50) UNIQUE); 
-- next table
CREATE TABLE courses(course_id int PRIMARY KEY AUTO_INCREMENT,course_name char(50) NOT NULL);
--third table linked from first two 
CREATE TABLE enrollments
   (id int PRIMARY KEY AUTO_INCREMENT,
    student_id int ,
    course_id int ,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id));
