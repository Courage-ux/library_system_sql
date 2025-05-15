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
