CREATE TRIGGER trg_UpdateQuantityAvailable
ON BorrowedBooks
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Update QuantityAvailable when a book is borrowed
    IF EXISTS (SELECT 1 FROM INSERTED)
    BEGIN
        UPDATE Books
        SET QuantityAvailable = QuantityAvailable - 1
        FROM Books
        INNER JOIN INSERTED ON Books.BookID = INSERTED.BookID;
    END

    -- Update QuantityAvailable when a book is returned
    IF EXISTS (SELECT 1 FROM DELETED)
    BEGIN
        UPDATE Books
        SET QuantityAvailable = QuantityAvailable + 1
        FROM Books
        INNER JOIN DELETED ON Books.BookID = DELETED.BookID;
    END
END;
