create database NewLibrary;
use NewLibrary;

create table Member (
	CustomerID INT Primary Key, 
    Firstname VARCHAR(100),
    Lastname VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15)
    );

create table Books (
	Book_id INT Primary Key, 
    Title VARCHAR(150),
    Author VARCHAR(100),
    Publication_year INT,
    Genre VARCHAR(70),
    Available_copies INT
    );
    
create table Borrowings (
	BorrowingID INT PRIMARY KEY,
    CustomerID INT, 
    Book_id INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Member (CustomerID),
    FOREIGN KEY (Book_id) REFERENCES Books (Book_id)
    );

    
INSERT INTO Member values
	(1, 'Neha', 'Sharma', 'neha.sharma@gmail.com', '+91 9876543210'),
    (2, 'Rajesh', 'Patel', 'rajesh.patel@gmail.com', '+91 9876543211'),
    (3, 'Priya', 'Verma', 'priya.verma@gmail.com', '+91 9876543212'),
    (4, 'Sanjay', 'Singh', 'sanjay.singh@gmail.com', '+91 9876543213'),
    (5, 'Aishwarya', 'Reddy', 'aishwarya.reddy@gmail.com', '+91 9876543214'),
    (6, 'Arjun', 'Gupta', 'arjun.gupta@gmail.com', '+91 9876543215'),
    (7, 'Anjali', 'Desai', 'anjali.desai@gmail.com', '+91 9876543216'),
    (8, 'Rakesh', 'Sharma', 'rakesh.sharma@gmail.com', '+91 9876543217'),
    (9, 'Deepika', 'Patel', 'deepika.patel@gmail.com', '+91 9876543218'),
    (10, 'Abhishek', 'Verma', 'abhishek.verma@gmail.com', '+91 9876543219'),
    (11, 'Sneha', 'Singh', 'sneha.singh@gmail.com', '+91 9876543220'),
    (12, 'Rahul', 'Kumar', 'rahul.kumar@gmail.com', '+91 9876543221'),
    (13, 'Pooja', 'Shah', 'pooja.shah@gmail.com', '+91 9876543222'),
    (14, 'Manish', 'Joshi', 'manish.joshi@gmail.com', '+91 9876543223'),
    (15, 'Shweta', 'Gupta', 'shweta.gupta@gmail.com', '+91 9876543224'),
    (16, 'Vikram', 'Deshmukh', 'vikram.deshmukh@gmail.com', '+91 9876543225'),
    (17, 'Ananya', 'Reddy', 'ananya.reddy@gmail.com', '+91 9876543226'),
    (18, 'Prakash', 'Verma', 'prakash.verma@gmail.com', '+91 9876543227'),
    (19, 'Natasha', 'Sharma', 'natasha.sharma@gmail.com', '+91 9876543228'),
    (20, 'Rohit', 'Patel', 'rohit.patel@gmail.com', '+91 9876543229');
    
INSERT INTO Books values
	(1, 'Introduction to Algorithms', 'Thomas H. Cormen', 2009, 'Computer Science', 5),
    (2, 'Electric Machinery Fundamentals', 'Stephen J.Chapman', 2018, 'Electrical', 3),
    (3, 'The Art of Electronics', 'Paul Horowitz', 2015, 'Electronics', 0),
    (4, 'Engineering Mechanics: Statics', 'R.C. Hibbeler', 2020, 'Mechanical', 6),
    (5, 'Reinforced Concrete Design', 'George F.Limbrunner', 2017, 'Civil', 2),
    (6, 'Database Systems: The Complete Book', 'Hector Garcia-Molina', 2021, 'Computer Science', 1),
    (7, 'Microelectronic Circuits', 'Adel S. Sedra', 2016, 'Electronics', 3),
    (8, 'Signals and Systems', 'Alan V.Oppenheim', 1997, 'Electrical', 2),
    (9, 'Heat Transfer: Principles and Applications', 'Yunus A. Cengel', 2014, 'Mechanical', 4),
    (10, 'Structural Analysis', 'Russell C. Hibbeler', 2019, 'Civil', 0),
    (11, 'Computer Networking: A Top-Down Approach', 'James F. Kurose', 2020, 'Computer Science', 5),
    (12, 'Power System Analysis and Design', 'J. Duncan Glover', 2017, 'Electrical', 2),
    (13, 'Digital Design and Computer Architecture', 'David Money Harris', 2012, 'Computer Science', 4),
    (14, 'Mechanics of Materials', 'Ferdinand P. Beer', 2015, 'Mechanical', 3),
    (15, 'Geotechnical Engineering: Principles and Practices', 'Donald P. Coduto', 2018, 'Civil', 0),
    (16, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 2021, 'Computer Science', 2),
    (17, 'Electronic Devices and Circuit Theory', 'Robert L. Boylestad', 2019, 'Electronics', 2),
    (18, 'Control Systems Engineering', 'Norman S. Nise', 2016, 'Electrical', 4),
    (19, 'Fluid Mechanics', 'Frank M. White', 2014, 'Mechanical', 1),
    (20, 'Transportation Engineering', 'C. Jotin Khisty', 2017, 'Civil', 5),
    (21, 'Operating System Concepts', 'Abraham Silberschatz', 2018, 'Computer Science', 3),
    (22, 'Digital Signal Processing', 'John G. Proakis', 2013, 'Electrical', 1),
    (23, 'Fundamentals of Electric Circuits', 'Charles K. Alexander', 2020, 'Electronics', 5),
    (24, 'Materials Science and Engineering', 'William D. Callister', 2016, 'Mechanical', 3),
    (25, 'Highway Engineering', 'Daniel J. Findley', 2019, 'Civil', 0),
    (26, 'Data Structures and Algorithms in Python', 'Michael T. Goodrich', 2014, 'Computer Science', 1),
    (27, 'Introduction to Embedded Systems', 'Edward Ashford Lee', 2011, 'Electrical', 5),
    (28, 'Power Electronics: Circuits, Devices, and Applications', 'Muhammad H. Rashid', 2017, 'Electrical', 0),
    (29, 'Engineering Vibrations', 'Daniel J. Inman', 2020, 'Mechanical', 2),
    (30, 'Environmental Engineering', 'Howard S. Peavy', 2015, 'Civil', 3);
    
