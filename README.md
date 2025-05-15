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
