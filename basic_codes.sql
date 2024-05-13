-- Retrieve all books by a specific author
SELECT Books.Title, Authors.AuthorName
FROM Books
JOIN Authors ON Books.AuthorID = Authors.AuthorID
WHERE Authors.AuthorName = 'J.K. Rowling';

-- Find books based on genre
SELECT * FROM Books WHERE Genre = 'Fiction';

--finding total genre available
SELECT DISTINCT Genre  FROM Books;

-- Get a list of members who have borrowed a specific book
SELECT Members.FirstName, Members.LastName
FROM Members
JOIN BorrowedBooks ON Members.MemberID = BorrowedBooks.MemberID
WHERE BorrowedBooks.BookID = 1;

-- Check the availability of a particular book
SELECT Title, QuantityAvailable
FROM Books
WHERE BookID = 30;

