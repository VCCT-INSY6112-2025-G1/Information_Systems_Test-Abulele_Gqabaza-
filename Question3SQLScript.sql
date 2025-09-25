-- initial setup
CREATE SCHEMA question3;
USE question3;

-- Q.3.1
CREATE TABLE Author(
	AuthorID	INT AUTO_INCREMENT,
    AuthorName	VARCHAR(50) NOT NULL,
    AuthorEmail	VARCHAR(50) NOT NULL,
    PRIMARY KEY(AuthorID)
);

-- Q.3.2
CREATE TABLE FictionBook(
	BookID		INT AUTO_INCREMENT,
    BookTitle	VARCHAR(250) NOT NULL,
    AuthorID	INT NOT NULL,
    PublicationDate DATE,
    PRIMARY KEY(BookID),
    FOREIGN KEY(AuthorID) REFERENCES Author(AuthorID)
);

INSERT INTO Author(AuthorName, AuthorEmail)
VALUES	('Thabo Bless', 'thabo@yahoo.com');

INSERT INTO FictionBook(BookTitle, AuthorID, PublicationDate)
VALUES	('Into The Darkness', 1, '2025-02-14');

SELECT * FROM Author;
SELECT * FROM FictionBook;