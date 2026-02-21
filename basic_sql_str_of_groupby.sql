SHOW DATABASES ;
USE mydatabase;
SHOW TABLES ;

INSERT INTO Learners (
    L_firstName, L_LastName, L_Email, L_Phonenumber,
    L_EnrollDate, SelectedCourse, Year_of_Exp,
    L_company, L_SOJ, BatchStartDate, Location
) VALUES 
(
    "Riya", "Kumar", "riya.kumar@example.com", "9876543210",
    "2024-03-05", 2, 3,
    "Wipro", "Referral", "2024-04-01", "Bangalore"
),
(
    "Kabir", "Shah", "kabir.shah@example.com", "9988776655",
    "2024-02-20", 3, 4,
    "TCS", "Referral", "2024-03-10", "Delhi"
),
(
    "Simran", "Gupta", "simran.gupta@example.com", "9001122334",
    "2024-01-25", 1, 5,
    "HCL", "Referral", "2024-02-15", "Hyderabad"
),
(
    "Dev", "Rathore", "dev.rathore@example.com", "9330011223",
    "2024-05-12", 2, 1,
    "IBM", "Referral", "2024-06-01", "Pune"
);
DESC Learners; 
SHOW TABLES;

SELECT * FROM Learners ;
-- count no. of students joines accordigly 
SELECT L_SOJ , COUNT(*) as  students_joins 
FROM Learners 
GROUP BY L_SOJ
-- remember after groupby command what is the parameter 

