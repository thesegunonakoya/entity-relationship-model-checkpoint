CREATE TABLE Hotel (
    Hotel_Id INT PRIMARY KEY AUTO_INCREMENT,
    Hotel_Name VARCHAR(255) NOT NULL
);

CREATE TABLE Type (
    Type_Id INT PRIMARY KEY AUTO_INCREMENT,
    Type_Name VARCHAR(255) NOT NULL
);

CREATE TABLE Room (
    Room_Id INT PRIMARY KEY AUTO_INCREMENT,
    Floor INT,
    Hotel_Id INT,
    Type_Id INT,
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id),
    FOREIGN KEY (Type_Id) REFERENCES Type(Type_Id)
);

CREATE TABLE Category (
    Category_Id INT PRIMARY KEY AUTO_INCREMENT,
    Category_Name VARCHAR(255),
    Price DECIMAL(10, 2),
    Beds_numbers INT
);

CREATE TABLE Employee (
    Employee_Id INT PRIMARY KEY AUTO_INCREMENT,
    Employee_Name VARCHAR(255) NOT NULL,
    Employee_Specialty VARCHAR(255),
    Leads_Employee_Id INT,
    FOREIGN KEY (Leads_Employee_Id) REFERENCES Employee(Employee_Id)
);
