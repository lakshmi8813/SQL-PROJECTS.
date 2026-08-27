CREATE DATABASE Car_Dealership;
USE Car_Dealership;
CREATE TABLE Salesperson (
    Salesperson_ID INT PRIMARY KEY,
    Last_Name VARCHAR(50),
    First_Name VARCHAR(50)
);
CREATE TABLE Mechanic (
    Mechanic_ID INT PRIMARY KEY,
    Last_Name VARCHAR(50),
    First_Name VARCHAR(50)
);
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Last_Name VARCHAR(50),
    First_Name VARCHAR(50),
    Phone_Number VARCHAR(20),
    Address VARCHAR(100),
    City VARCHAR(50),
    State_Province VARCHAR(50),
    Country VARCHAR(50),
    Postal_Code VARCHAR(15)
);
CREATE TABLE Car (
    Car_ID INT PRIMARY KEY,
    Serial_Number VARCHAR(50),
    Make VARCHAR(50),
    Model VARCHAR(50),
    Colour VARCHAR(30),
    Year INT,
    Car_For_Sale CHAR(1)
);
CREATE TABLE Sales_Invoice (
    Invoice_ID INT PRIMARY KEY,
    Invoice_Number VARCHAR(50),
    Invoice_Date DATE,

    Car_ID INT,
    Customer_ID INT,
    Salesperson_ID INT,

    FOREIGN KEY (Car_ID)
        REFERENCES Car(Car_ID),

    FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID),

    FOREIGN KEY (Salesperson_ID)
        REFERENCES Salesperson(Salesperson_ID)
);
CREATE TABLE Service (
    Service_ID INT PRIMARY KEY,
    Service_Name VARCHAR(100),
    Hourly_Rate DECIMAL(10,2)
);
CREATE TABLE Service_Ticket (
    Service_Ticket_ID INT PRIMARY KEY,
    Service_Ticket_Number VARCHAR(50),

    Car_ID INT,
    Customer_ID INT,

    Date_Received DATE,
    Comments VARCHAR(255),
    Date_Returned DATE,

    FOREIGN KEY (Car_ID)
        REFERENCES Car(Car_ID),

    FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID)
);
CREATE TABLE Service_Mechanic (
    ServiceMechanic_ID INT PRIMARY KEY,

    Service_Ticket_ID INT,
    Service_ID INT,
    Mechanic_ID INT,

    Hours DECIMAL(5,2),
    Comment VARCHAR(255),
    Rate DECIMAL(10,2),

    FOREIGN KEY (Service_Ticket_ID)
        REFERENCES Service_Ticket(Service_Ticket_ID),

    FOREIGN KEY (Service_ID)
        REFERENCES Service(Service_ID),

    FOREIGN KEY (Mechanic_ID)
        REFERENCES Mechanic(Mechanic_ID)
);
CREATE TABLE Parts (
    Parts_ID INT PRIMARY KEY,
    Part_Number VARCHAR(50),
    Description VARCHAR(100),
    Purchase_Price DECIMAL(10,2),
    Retail_Price DECIMAL(10,2)
);
CREATE TABLE Parts_Used (
    Parts_Used_ID INT PRIMARY KEY,

    Part_ID INT,
    Service_Ticket_ID INT,

    Number_Used INT,
    Price DECIMAL(10,2),

    FOREIGN KEY (Part_ID)
        REFERENCES Parts(Parts_ID),

    FOREIGN KEY (Service_Ticket_ID)
        REFERENCES Service_Ticket(Service_Ticket_ID)
);