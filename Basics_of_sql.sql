SHOW DATABASES ;
CREATE DATABASE if not exists mydatabase ;
SELECT DATABASE() ;
USE mydatabase ;

CREATE TABLE employees (
	EmpId     int auto_increment,
	Firstname varchar(20) NOT NULL, 
    LastName  varchar(20) NOT NULL,
    Age 	  int NOT NULL,
    Salary    int NOT NULL,
    Location  varchar(20) NOT NULL,
    PRIMARY KEY(EmpId)
);

DESC employees;
SHOW TABLES ;

INSERT INTO employees (Firstname, LastName, Age, Salary, Location) 
VALUES ("Arjun", "Reddy", "25", "75000", "Hyderabad");

INSERT INTO employees (Firstname, LastName, Age, Salary, Location) 
VALUES ("Meera", "Patel", "30", "950000", "Mumbai");

INSERT INTO employees (Firstname, LastName, Age, Salary, Location) 
VALUES ("Rahul", "Sharma", "28", "620000", "Delhi");

INSERT INTO employees (Firstname, LastName, Age, Salary, Location) 
VALUES ("Sneha", "Kapoor", "26", "58000", "Chennai");

INSERT INTO employees (Firstname, LastName, Age, Salary, Location) 
VALUES ("Vikram", "Nair", "32", "90500", "Kochi");

INSERT INTO employees (Firstname, LastName, Age, Salary, Location) 
VALUES ("Kavya", "Singh", "27", "120000", "Bangalore");

SELECT * FROM employees;
DROP TABLE employees;
SELECT Firstname , LastName FROM employees ;
SELECT Firstname , LastName , Salary FROM employees WHERE Salary >= 10000 ORDER BY Salary DESC ;
UPDATE employees SET LastName = " friend " WHERE EmpId = 3;
UPDATE employees SET Salary = "595647" WHERE EmpId = 3;
SELECT COUNT(*) As no_of_employees  FROM employees ;


CREATE TABLE Courses (
	CourseID INT AUTO_INCREMENT,
    CourseName varchar(50) NOT NULL,
    CourseDuration INT NOT NULL,
    CourseFee INT NOT NULL,
    PRIMARY KEY (CourseID)
);
INSERT INTO Courses (CourseName, CourseDuration, CourseFee)
VALUES ('Full Stack Development', 6, 30000);
INSERT INTO Courses (CourseName, CourseDuration, CourseFee) VALUES
("Data Science", 6, 50000),
("Full Stack Web Dev", 4, 40000),
("Cloud Computing", 3, 35000);

-- This will auto-generate CourseID = 1 if the table is empty



SHOW TABLES;
CREATE TABLE Students(
StudentID 	INT AUTO_INCREMENT ,
S_FirstName varchar(50) NOT NULL,
S_LastName varchar(50) NOT NULL,
S_PhoneNum varchar(50) NOT NULL,
S_EnrollmentDate timestamp NOT NULL,
Selected_Course INT NOT NULL,
Years_of_Experience INT NOT NULL,
S_Company varchar(50) NOT NULL,
Batch_Start timestamp NOT NULL,
Location varchar(50) NOT NULL,
PRIMARY KEY(StudentID)
);

CREATE TABLE Learners(
	LearnerID  		INT AUTO_INCREMENT ,
    L_firstName 	varchar(50) NOT NULL,
    L_LastName 		varchar(50) NOT NULL,
    L_Email 		varchar(50),
    L_Phonenumber	varchar(15) NOT NULL,
    L_EnrollDate 	timestamp NOT NULL,
    SelectedCourse  INT NOT NULL,
    Year_of_Exp 	INT NOT NULL,
    L_company 		varchar(50),
    L_SOJ 			varchar(50) NOT NULL,
    BatchStartDate 		timestamp NOT NULL,
    Location 		varchar(50) NOT NULL,
    PRIMARY KEY(LearnerID),
    UNIQUE KEY(L_Email),
    FOREIGN KEY(SelectedCourse) REFERENCES Courses(CourseID)
);

DESC Learners ;
INSERT INTO Learners (
  L_firstName, L_LastName, L_Email, L_Phonenumber,
  L_EnrollDate, SelectedCourse, Year_of_Exp,
  L_company, L_SOJ, BatchStartDate, Location
) VALUES 
  ("Priya", "Reddy", "priyareddy@gmail.com", '9876543210',
   "2024-03-01 00:00:00", 1, 2, "Infosys", "Instagram", "2024-03-15 00:00:00", "Hyderabad"),

  ("Arjun", "Mehta", "arjun.mehta@gmail.com", '9988776655',
   "2024-04-05 00:00:00", 1, 3, "TCS", "Facebook", "2024-04-20 00:00:00", "Mumbai"),

  ("Sneha", "Patil", "sneha.patil@gmail.com", '9123456780',
   "2024-05-10 00:00:00", 1, 1, "Wipro", "Referral", "2024-05-25 00:00:00", "Pune"),

  ("Rajiv", "Kumar", "rajiv.kumar@gmail.com", '7012345678',
   "2024-06-12 00:00:00", 1, 5, "IBM", "Twitter", "2024-06-30 00:00:00", "Chennai");
SELECT * FROM Learners;


-- Give me the record of employee getting highest salary 
SELECT * FROM employees 
ORDER BY Salary DESC 
LIMIT 1;


-- Give me the record of the employee getting highest slaary and the age is greater than 25
SELECT * FROM employees 
WHERE Age> 25 
ORDER BY Salary DESC
LIMIT 2;

-- Find the no. of enrollmente in the website 
SELECT COUNT(*)as no_of_learners 
FROM Learners ;

-- LIKE COMMAND 
-- SELECT COUNT(*) FROM employees WHERE L_enroll_date LIKE '%-01-%'

-- UPDATE Learners SET YearsofExp = 1,L_company = 'amazon' WHERE EmpID = 4  ("Dont use and in set use comma ")

SELECT COUNT(L_company) FROM Learners 
-- SELECT COUNT( DISINCT L_company) FROM Learners  