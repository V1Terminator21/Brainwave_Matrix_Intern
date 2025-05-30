-- Insert sample member
INSERT INTO Members VALUES (1, 'Vrushabh Tokse', 'vrushabhtokse@gmail.com', '1234567890', 'Pune', '2024-01-01');

-- Insert sample book
INSERT INTO Books VALUES (1, 'DBMS Made Easy', 'Silberschatz', 'ISBN12345', 'Computer Science', 'Pearson', 10);

-- Insert sample staff
INSERT INTO Staff VALUES (1, 'Ravi Shukla', 'Librarian', 'ravi@library.com', '9999999999');

-- Insert borrowing
INSERT INTO Borrowing VALUES (1, 1, 1, '2025-05-10', '2025-05-17', 0.00);

-- Insert fine (if any)
INSERT INTO Fines VALUES (1, 1, 0.00, 'Paid');
