-- Table to store member information
CREATE TABLE Members (
  Member_ID INT PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100),
  Phone VARCHAR(15),
  Address TEXT,
  Join_Date DATE
);

-- Table to store book information
CREATE TABLE Books (
  Book_ID INT PRIMARY KEY,
  Title VARCHAR(200),
  Author VARCHAR(100),
  ISBN VARCHAR(20),
  Genre VARCHAR(50),
  Publisher VARCHAR(100),
  Quantity INT
);

-- Table to record borrow/return info
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

-- Table to record staff
CREATE TABLE Staff (
  Staff_ID INT PRIMARY KEY,
  Name VARCHAR(100),
  Role VARCHAR(50),
  Email VARCHAR(100),
  Phone VARCHAR(15)
);

-- Table for fines
CREATE TABLE Fines (
  Fine_ID INT PRIMARY KEY,
  Borrow_ID INT,
  Amount DECIMAL(6,2),
  Paid_Status VARCHAR(10),
  FOREIGN KEY (Borrow_ID) REFERENCES Borrowing(Borrow_ID)
);

