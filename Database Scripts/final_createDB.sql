/*
	CNSA 216 Final Project
	Database creation
*/

--USE master;

--CREATE DATABASE webprog_mmn;

USE webprog_mmn;

CREATE TABLE client (
	clientID INT NOT NULL IDENTITY(1000,1)
		CONSTRAINT PK_clientID PRIMARY KEY,
	fName VARCHAR(25) NOT NULL,
	mInitial CHAR(1),
	lName VARCHAR(25) NOT NULL,
	street1 VARCHAR(100),
	street2 VARCHAR(100),
	city VARCHAR(25),
	addr_state VARCHAR(25),
	zip VARCHAR(10),
	phone VARCHAR(15),
	email VARCHAR(100),
	gender CHAR(1) NOT NULL
		CHECK(gender IN('M','F','O')),
	dateOfBirth DATE NOT NULL,
	username VARCHAR(25)
);

CREATE TABLE employee (
	employeeID INT NOT NULL IDENTITY(1,1)
		CONSTRAINT PK_employeeID PRIMARY KEY,
	username VARCHAR(25) NOT NULL
);

CREATE TABLE users (
	userID INT NOT NULL 
		CONSTRAINT PK_userIDPassword PRIMARY KEY,
	userPassword NVARCHAR(MAX) NOT NULL,
	comPassword NVARCHAR(MAX) NOT NULL,
	salt NVARCHAR(512) NOT NULL,
	userType TINYINT NOT NULL
);

CREATE TABLE insurance (
	insuranceID INT NOT NULL IDENTITY(1,1)
		CONSTRAINT PK_insuranceID PRIMARY KEY,
	companyName VARCHAR(50) NOT NULL,
	coveragePercent DECIMAL(5,2) NOT NULL,
	phone VARCHAR(15),
	street1 VARCHAR(100),
	street2 VARCHAR(100),
	city VARCHAR(25),
	addr_state VARCHAR(25),
	zip VARCHAR(10)
);

CREATE TABLE clientInsurance (
	clientID INT NOT NULL
		FOREIGN KEY(clientID) REFERENCES client(clientID),
	insuranceID INT NOT NULL
		FOREIGN KEY(insuranceID) REFERENCES insurance(insuranceID),
	CONSTRAINT PK_clientInsurance PRIMARY KEY
		NONCLUSTERED (clientID, insuranceID),
	clientInsuranceNum INT
);

CREATE TABLE physician (
	physicianID INT NOT NULL IDENTITY(1,1)
		CONSTRAINT PK_physicianID PRIMARY KEY,
	fName VARCHAR(25) NOT NULL,
	mInitial CHAR(1),
	lName VARCHAR(25) NOT NULL,
	phone VARCHAR(15),
	email VARCHAR(100)
);

CREATE TABLE medicine (
	medicineID INT NOT NULL IDENTITY(1,1)
		CONSTRAINT PK_medicineID PRIMARY KEY,
	medicineName VARCHAR(25) NOT NULL,
	intakeMethod VARCHAR(100) NOT NULL,
	cost DECIMAL(7,2) NOT NULL
);

CREATE TABLE prescription (
	prescriptionID INT NOT NULL IDENTITY(1,1)
		CONSTRAINT PK_prescriptionID PRIMARY KEY,
	clientID INT NOT NULL
		FOREIGN KEY(clientID) REFERENCES client(clientID),
	physicianID INT NOT NULL
		FOREIGN KEY(physicianID) REFERENCES physician(physicianID),
	medicineID INT NOT NULL
		FOREIGN KEY(medicineID) REFERENCES medicine(medicineID),
	startDate DATE DEFAULT GETDATE(),
	expiryDate DATE NOT NULL,
	refillCounter TINYINT NOT NULL,
	price DECIMAL(7,2)
);

CREATE TABLE refill (
	refillID INT NOT NULL IDENTITY(1000,1)
		CONSTRAINT PK_refillID PRIMARY KEY,
	prescriptionID INT NOT NULL
		FOREIGN KEY(prescriptionID) REFERENCES prescription(prescriptionID),
	dosage VARCHAR(50) NOT NULL,
	frequency VARCHAR(50) NOT NULL,
	supplyDays TINYINT NOT NULL,
	quantitySupplied TINYINT NOT NULL,
	amountDue DECIMAL(7,2),
	dateOfRefill DATETIME DEFAULT GETDATE()
);

CREATE TABLE payment (
	paymentID INT NOT NULL IDENTITY(1,1)
		CONSTRAINT PK_paymentID PRIMARY KEY,
	refillID INT NOT NULL
		FOREIGN KEY(refillID) REFERENCES refill(refillID),
	paymentType VARCHAR(6)
		CHECK(paymentType IN('CASH','CREDIT','DEBIT','CHECK')),
	dateOfPayment DATETIME DEFAULT GETDATE()
);

CREATE TABLE auditLog (
	auditID INT NOT NULL IDENTITY(1,1)
		CONSTRAINT PK_auditID PRIMARY KEY,
	tableName VARCHAR(50) NOT NULL,
	fieldName VARCHAR(50) NOT NULL,
	recordID INT NOT NULL,
	oldValue VARCHAR(255) NOT NULL,
	newValue VARCHAR(255) NOT NULL,
	--changedBy INT NOT NULL, --more complex to track, might be able to set something up??
	changeDate DATE NOT NULL
);