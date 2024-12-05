create database CompanyDetails;
use CompanyDetails;

#1 create table managers
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Age INT CHECK (Age > 18),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);

#2 insert 10 rows

INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Gender, Department, Salary)
VALUES 
(1, 'John', 'Doe', '1985-03-10', 39, 'M', 'IT', 30000),
(2, 'Aaliya', 'Khan', '1990-05-15', 34, 'F', 'Finance', 25000),
(3, 'Raj', 'Patel', '1982-07-19', 42, 'M', 'IT', 40000),
(4, 'Meera', 'Sharma', '1991-11-20', 33, 'F', 'HR', 20000),
(5, 'Suresh', 'Naik', '1988-04-10', 36, 'M', 'Operations', 15000),
(6, 'Emily', 'Clark', '1995-08-30', 29, 'F', 'IT', 27000),
(7, 'Robert', 'Smith', '1980-02-05', 44, 'M', 'Finance', 32000),
(8, 'Sophia', 'Brown', '1993-06-10', 31, 'F', 'HR', 22000),
(9, 'James', 'Wilson', '1987-12-15', 37, 'M', 'Operations', 18000),
(10, 'Rohit', 'Verma', '1992-01-25', 32, 'M', 'IT', 35000);

select * from Managers;


#3 3. Retrieve Name and Date of Birth of Manager with Manager_Id = 1

select First_name,Last_Name,DOB
from Managers
where Manager_Id = '1';


#4 Display the Annual Income of All Managers 
select First_name,Last_Name, (Salary * 12 ) as Annual_income
from Managers ;


#5 Display Records of All Managers Except ‘Aaliya’

select Manager_Id,First_name,Last_Name,DOB, Age, Gender, Department, Salary 
from Managers 
where First_name != 'Aaliya';


#6 query to display details of managers whose department is IT and earns more than 25000 per month
select Manager_Id,First_name,Last_Name,DOB, Age, Gender, Department, Salary 
from Managers 
where Salary > 25000 and Department = 'IT' ;


#7 query to display details of managers whose salary is between 10000 and 35000.
select Manager_Id,First_name,Last_Name,DOB, Age, Gender, Department, Salary 
from Managers 
where Salary between 10000 and 35000;













