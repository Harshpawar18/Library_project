-- View: MembersBorrowedBooks
CREATE VIEW MembersBorrowedBooks AS
SELECT
    Members.MemberID,
    Members.FirstName,
    Members.LastName,
    COUNT(BorrowedBooks.BookID) AS BorrowedBookCount
FROM
    Members
JOIN
    BorrowedBooks ON Members.MemberID = BorrowedBooks.MemberID
GROUP BY
    Members.MemberID, Members.FirstName, Members.LastName;

