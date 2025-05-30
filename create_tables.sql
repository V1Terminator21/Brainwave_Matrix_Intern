CREATE TABLE Members (
  Member_ID INT PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100),
  Phone VARCHAR(15),
  Address TEXT,
  Join_Date DATE
);

CREATE TABLE Books (
  Book_ID INT PRIMARY KEY,
  Title VARCHAR(200),
  Author VARCHAR(100),
  ISBN VARCHAR(20),
  Genre VARCHAR(50),
  Publisher VARCHAR(100),
  Quantity INT
);

CREATE TABLE Borrowing (
  Borrow_ID INT PRIMARY KEY,
  Member_ID INT,
  Book_ID INT,
  Issue_Date DATE,
  Return_Date DATE,
  Fine DECIMAL(6,2),
  FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
  FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
