-- View: AvailableBooks
CREATE VIEW AvailableBooks AS
SELECT
    Books.BookID,
    Books.Title,
    Books.AuthorID,
    Authors.AuthorName,
    Books.Genre,
    Books.PublishedDate,
    Books.QuantityAvailable
FROM
    Books
JOIN
    Authors ON Books.AuthorID = Authors.AuthorID
WHERE
    Books.QuantityAvailable > 0;