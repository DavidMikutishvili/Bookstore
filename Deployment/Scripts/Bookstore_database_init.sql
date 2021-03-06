CREATE DATABASE Bookstore;
GO

USE Bookstore;

CREATE TABLE Authors (
	id INT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
	author_name NVARCHAR(500)
);

CREATE TABLE Publishers (
	id INT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
	publisher_name NVARCHAR(500)
);

CREATE TABLE Languages (
	id INT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
	language_name NVARCHAR(500)
);

CREATE TABLE Books (
	id INT PRIMARY KEY IDENTITY (1, 1) NOT NULL,
	title NVARCHAR(500),
	publication_date DATE,
	product_rating INT,
	price INT,
	author_id INT,
	publisher_id INT,
	language_id INT,
	FOREIGN KEY (author_id) REFERENCES Authors (id),
	FOREIGN KEY (publisher_id) REFERENCES Publishers (id),
	FOREIGN KEY (language_id) REFERENCES Languages (id)
);
