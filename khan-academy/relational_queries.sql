-- Solution SQL for the project from the Relational Queries course ("Famous people")

CREATE TABLE authors (id INTEGER PRIMARY KEY, fullname TEXT);

INSERT INTO authors VALUES (1, "Marc Peter Keane");

INSERT INTO authors VALUES (2, "Neil Gaiman");

INSERT INTO authors VALUES (3, "Stephan King");

INSERT INTO authors VALUES (4, "Maya Angelo");

INSERT INTO authors VALUES (5, "Issac Asimov");

INSERT INTO authors VALUES (6, "Tony Morrison");

INSERT INTO authors VALUES (7, "JK Rowling");

CREATE TABLE books (id INTEGER, author_id INTEGER FOREIGN KEY, title TEXT, year_published INTEGER);

INSERT INTO books VALUES (1, 1, "The Art of Setting Stones", 2002);

INSERT INTO books VALUES (2, 2, "The Sandman Vol.1: Preludes & Nocturnes", 1989);

INSERT INTO books VALUES (3, 3, "The Stand", 1978);

INSERT INTO books VALUES (4, 4, "I Know Why the Caged Bird Sings", 1969);

INSERT INTO books VALUES (5, 5, "Foundation", 1951);

INSERT INTO books VALUES (6, 6, "JAZZ", 1992);

INSERT INTO books VALUES (7, 7, "The Casual Vacancy", 2012);

INSERT INTO books VALUES (8, 2, "Marvel 1602", 2003);

INSERT INTO books VALUES (9, 4, "Gather Together in My Name", 1974);

INSERT INTO books VALUES (10, 5, "Foundation and Empire", 1952);

INSERT INTO books VALUES (11, 5, "Second Foundation", 1953);

INSERT INTO books VALUES (12, 6, "Beloved", 1987);

SELECT * FROM authors;

SELECT fullname, title FROM authors LEFT JOIN books ON authors.id = books.author_id;

SELECT fullname, COUNT(books.id) AS Number_of_Books FROM authors LEFT JOIN books ON authors.id = books.author_id GROUP BY fullname;

SELECT fullname, COUNT(books.id) AS More_than_two FROM authors JOIN books ON authors.id = books.author_id GROUP BY fullname HAVING More_than_two >= 2;

SELECT fullname FROM authors Join books ON authors.id = books.author_id GROUP BY fullname HAVING year_published > 1980;
