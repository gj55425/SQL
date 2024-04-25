CREATE TABLE Customers (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Orders(CustomerID)                      );
 

INSERT INTO Customers (OrderID, CustomerID, OrderDate) VALUES
(10308, 2, '1996-09-18'),
(10309, 37, '1996-09-19'),
(10310, 77, '1996-09-20');

 CREATE TABLE Orders (
    CustomerID INT PRIMARY KEY,
    CustomerName TEXT,
    ContactName TEXT,
    Country TEXT
);
 
INSERT INTO Orders (CustomerID, CustomerName, ContactName, Country) VALUES
(2, 'Ana', 'Trujillo', 'Mexiko'),
(1, 'Afreds Futterkiste', 'Maria Anders', 'Germany'),
(3, 'Antoni Moreno Taqueria', 'Antoni Moreno', 'Mexiko');


INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(10308, 2, '1996-09-18'),
(10365, 3, '1996-11-27'),
(10383, 3, '1996-12-16'),
(10355, 3, '1996-11-15'),
(10278, 1, '1996-08-12');


 -- neue Kunden
 
 INSERT INTO Customers (CustomersID, CustomerName, ContactName, Country) VALUES
 (4, 'Bianchi Biciclette', 'Luca Bianchi', 'Italy'),
 (5, 'Chop Suey Chinese', 'Li Wei', 'China');
 
 
 