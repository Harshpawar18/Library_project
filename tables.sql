-- Creating Authors Table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName NVARCHAR(100) NOT NULL
);

-- Creating Books Table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title NVARCHAR(200) NOT NULL,
    AuthorID INT FOREIGN KEY REFERENCES Authors(AuthorID),
    ISBN NVARCHAR(20) NOT NULL,
    Genre NVARCHAR(50),
    PublishedDate DATE,
    QuantityAvailable INT NOT NULL
);

-- Creating Members Table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100),
    Phone NVARCHAR(20),
    Address NVARCHAR(200)
);

-- Creating BorrowedBooks Table
CREATE TABLE BorrowedBooks (
    BorrowID INT PRIMARY KEY,
    BookID INT FOREIGN KEY REFERENCES Books(BookID),
    MemberID INT FOREIGN KEY REFERENCES Members(MemberID),
    BorrowDate DATE,
    ReturnDate DATE
);