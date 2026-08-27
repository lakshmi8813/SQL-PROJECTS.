create database bankGM;
use bankGM;
create table customer(customer_id int,customer_name varchar(50),phone bigint,email varchar(70),addresss varchar(50));
insert into customer values
(1,'Rahul Sharma',9876543210,'rahul@gmail.com','Bengaluru'),
(2,'Priya Reddy',9876543211,'priya@gmail.com','Hyderabad'),
(3,'Arjun Kumar',9876543212,'arjun@gmail.com','Chennai'),
(4,'Sneha Patel',9876543213,'sneha@gmail.com','Mumbai'),
(5,'Kiran Rao',9876543214,'kiran@gmail.com','Pune'),
(6,'Anjali Verma',9876543215,'anjali@gmail.com','Delhi'),
(7,'Rohit Singh',9876543216,'rohit@gmail.com','Kolkata'),
(8,'Meena Das',9876543217,'meena@gmail.com','Visakhapatnam'),
(9,'Suresh Naidu',9876543218,'suresh@gmail.com','Vijayawada'),
(10,'Lakshmi Devi',9876543219,'lakshmi@gmail.com','Mysuru');
alter table  customer add
constraint primary key(customer_id);

create table Branches(Branch_id int ,Branch_name varchar(50),city varchar(50),IFSC_code int);
insert into Branches values
(101,'MG Road Branch','Bengaluru',560001),
(102,'Ameerpet Branch','Hyderabad',500016),
(103,'T Nagar Branch','Chennai',600017),
(104,'Andheri Branch','Mumbai',400053),
(105,'Shivaji Nagar Branch','Pune',411005),
(106,'Connaught Place Branch','Delhi',110001),
(107,'Salt Lake Branch','Kolkata',700091),
(108,'Dwaraka Nagar Branch','Visakhapatnam',530016),
(109,'Benz Circle Branch','Vijayawada',520010),
(110,'Kuvempu Nagar Branch','Mysuru',570023);
alter table  Branches add
constraint primary key(Branch_id);
create table Employees(employee_id int ,Branch_id int,employee_name varchar(50),Designation varchar(50),salary int);
insert into Employees values
(201,101,'Ramesh','Manager',75000),
(202,102,'Suma','Cashier',35000),
(203,103,'Prakash','Clerk',30000),
(204,104,'Divya','Loan Officer',50000),
(205,105,'Ajay','Manager',72000),
(206,106,'Keerthi','Cashier',36000),
(207,107,'Vinod','Clerk',32000),
(208,108,'Swathi','Loan Officer',52000),
(209,109,'Harish','Manager',76000),
(210,110,'Pooja','Cashier',37000);
alter table  Employees add
constraint primary key (employee_id);
alter table Employees add constraint foreign key (Branch_id)
references Branches(Branch_id);

create table Accounts(Account_id int ,customer_id int ,Branch_id int,Account_type varchar(50),Balence int,Open_date date);
insert into Accounts values
(301,1,101,'Savings',50000,'2023-01-10'),
(302,2,102,'Current',80000,'2023-02-15'),
(303,3,103,'Savings',25000,'2023-03-20'),
(304,4,104,'Current',95000,'2023-04-12'),
(305,5,105,'Savings',40000,'2023-05-08'),
(306,6,106,'Savings',70000,'2023-06-18'),
(307,7,107,'Current',100000,'2023-07-22'),
(308,8,108,'Savings',35000,'2023-08-05'),
(309,9,109,'Current',90000,'2023-09-14'),
(310,10,110,'Savings',60000,'2023-10-30');
 
alter table  Accounts add
 constraint primary key(Account_id);
 alter table Accounts add constraint foreign key (customer_id)
references customer(customer_id);
alter table Accounts add constraint foreign key (Branch_id)
 references Branches(Branch_id);

create table Lones (Lone_id int ,Customer_id int ,Branch_id int ,lone_type varchar(50),Lone_amount int);
insert into Lones values
(401,1,101,'Home Loan',2500000),
(402,2,102,'Car Loan',600000),
(403,3,103,'Education Loan',400000),
(404,4,104,'Personal Loan',300000),
(405,5,105,'Business Loan',1500000),
(406,6,106,'Gold Loan',200000),
(407,7,107,'Home Loan',3500000),
(408,8,108,'Car Loan',700000),
(409,9,109,'Personal Loan',450000),
(410,10,110,'Education Loan',500000);
alter table Lones add
constraint primary key(Lone_id);
alter table  Lones add constraint foreign key (Customer_id)
references customer(customer_id);
alter table  Lones add constraint foreign key (Branch_id)
references Branches(Branch_id);
 create table cards (Card_id int ,Account_id  int,card_type varchar(50),Expiry_date date ,cvv int);
 insert cards values
(501,301,'Debit','2028-01-31',123),
(502,302,'Credit','2028-02-28',234),
(503,303,'Debit','2028-03-31',345),
(504,304,'Credit','2028-04-30',456),
(505,305,'Debit','2028-05-31',567),
(506,306,'Credit','2028-06-30',678),
(507,307,'Debit','2028-07-31',789),
(508,308,'Credit','2028-08-31',890),
(509,309,'Debit','2028-09-30',901),
(510,310,'Credit','2028-10-31',112);
alter table  cards add
constraint primary key(Card_id);
alter table cards add constraint foreign key (Account_id)
references Accounts(Account_id);

 create table Transactions (Transation_id int  ,Account_id  int,Transaction_type varchar(50),Amount int,Transation_date date);
 insert into Transactions values
(601,301,'Deposit',10000,'2024-01-05'),
(602,302,'Withdrawal',5000,'2024-01-08'),
(603,303,'Transfer',12000,'2024-01-10'),
(604,304,'Deposit',20000,'2024-01-15'),
(605,305,'Withdrawal',7000,'2024-01-18'),
(606,306,'Transfer',9000,'2024-01-22'),
(607,307,'Deposit',15000,'2024-01-25'),
(608,308,'Withdrawal',4000,'2024-01-28'),
(609,309,'Transfer',11000,'2024-02-02'),
(610,310,'Deposit',18000,'2024-02-05');
alter table Transactions add
constraint primary key(Transation_id);
 alter table Transactions add constraint foreign key (Account_id)
references Accounts(Account_id);
 create table Benificiaries(Benificiari_id int ,Account_id int,Benificiary_name varchar(50),Bank_name varchar(50),IFSC_code int);
 insert into Benificiaries values
 (701,301,'Anil Kumar','SBI',560001),
(702,302,'Deepika','HDFC',500016),
(703,303,'Ravi Teja','ICICI',600017),
(704,304,'Neha','Axis Bank',400053),
(705,305,'Mahesh','Canara Bank',411005),
(706,306,'Kavya','Union Bank',110001),
(707,307,'Sunil','PNB',700091),
(708,308,'Nisha','Indian Bank',530016),
(709,309,'Manoj','Bank of Baroda',520010),
(710,310,'Geetha','Kotak Bank',570023);
alter table  Benificiaries add
constraint primary key (Benificiari_id);
alter table  Benificiaries add constraint foreign key (Account_id)
references Accounts(Account_id);

 create table Login_user(User_id int ,customer_id int,User_name varchar(50),Password varchar(50),logout_time time);
 insert into Login_user values
(801,1,'rahul01','Rahul@123','18:30:00'),
(802,2,'priya02','Priya@123','19:00:00'),
(803,3,'arjun03','Arjun@123','17:45:00'),
(804,4,'sneha04','Sneha@123','20:15:00'),
(805,5,'kiran05','Kiran@123','18:10:00'),
(806,6,'anjali06','Anjali@123','21:00:00'),
(807,7,'rohit07','Rohit@123','19:20:00'),
(808,8,'meena08','Meena@123','20:40:00'),
(809,9,'suresh09','Suresh@123','18:50:00'),
(810,10,'lakshmi10','Lakshmi@123','21:30:00');
alter table  Login_user add
constraint primary key (User_id);
alter table Login_user add constraint foreign key (customer_id)
references customer(customer_id);
 