--create a table
CREATE TABLE authors(author_id int PRIMARY KEY AUTO_INCREMENT,author_name char(50) NOT NULL,email char(50) UNIQUE);
--next table
CREATE TABLE books(book_id int PRIMARY KEY AUTO_INCREMENT,book_title char(50) NOT NULL,author_id int,FOREIGN KEY (author_id) REFERENCES authors (author_id));