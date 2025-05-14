# library_system_sql


# Library Management System

This project is a simple MySQL database for managing books, authors, library members, and book loans. It was created as part of a beginner SQL assignment.

## Features

- Uses MySQL to design a relational database
- Includes tables for Books, Authors, Members, Loans, and BookAuthors
- Demonstrates use of:
  - Primary Keys (PK)
  - Foreign Keys (FK)
  - NOT NULL and UNIQUE constraints
  - One-to-Many and Many-to-Many relationships

## How to Use

1. Open your MySQL environment (e.g., MySQL Workbench or XAMPP).
2. Create a new database (e.g., `library_db`).
3. Open the `library_system.sql` file.
4. Run the script to create all tables.

## Tables in the Database

- `Books` – stores book details
- `Authors` – stores information about authors
- `Members` – stores library user data
- `Loans` – tracks which member borrows which book
- `BookAuthors` – handles the many-to-many relationship between books and authors

## Author

Courage Joshua


-- Create Authors table
CREATE TABLE Authors (
  AuthorID INT AUTO_INCREMENT PRIMARY KEY,
  FullName VARCHAR(100) NOT NULL,
  Email VARCHAR(100) UNIQUE
);

-- Create Books table
CREATE TABLE Books (
  BookID INT AUTO_INCREMENT PRIMARY KEY,
  Title VARCHAR(150) NOT NULL,
  ISBN VARCHAR(13) UNIQUE NOT NULL,
  PublishedYear YEAR,
  CopiesAvailable INT DEFAULT 0
);

-- Create Members table
CREATE TABLE Members (
  MemberID INT AUTO_INCREMENT PRIMARY KEY,
  FullName VARCHAR(100) NOT NULL,
  Email VARCHAR(100) UNIQUE NOT NULL,
  JoinDate DATE NOT NULL
);

-- Create BookAuthors table (Many-to-Many: Books <-> Authors)
CREATE TABLE BookAuthors (
  BookID INT NOT NULL,
  AuthorID INT NOT NULL,
  PRIMARY KEY (BookID, AuthorID),
  FOREIGN KEY (BookID) REFERENCES Books(BookID),
  FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Create Loans table (One-to-Many: Members -> Loans)
CREATE TABLE Loans (
  LoanID INT AUTO_INCREMENT PRIMARY KEY,
  MemberID INT NOT NULL,
  BookID INT NOT NULL,
  LoanDate DATE NOT NULL,
  ReturnDate DATE,
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
  FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

