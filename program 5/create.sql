CREATE TABLE DEPARTMENT (
	DNO VARCHAR2(20) PRIMARY KEY,
	DNAME VARCHAR2(20),
	MGRSTARTDATE DATE
);

CREATE TABLE EMPLOYEE(
	SSN VARCHAR2 (20) PRIMARY KEY, 
	FNAME VARCHAR2 (20),
	LNAME VARCHAR2 (20),
	ADDRESS VARCHAR2 (20),
	SEX CHAR (1),
	SALARY INTEGER,
	SUPERSSN REFERENCES EMPLOYEE (SSN), 
	DNO REFERENCES DEPARTMENT (DNO)
);


CREATE TABLE DLOCATION(
	DLOC VARCHAR2 (20),
	DNO REFERENCES DEPARTMENT (DNO), 
	PRIMARY KEY (DNO, DLOC)
);

CREATE TABLE PROJECT(
	PNO INTEGER PRIMARY KEY, 
	PNAME VARCHAR2(20),
	PLOCATION VARCHAR2 (20),
	DNO REFERENCES DEPARTMENT (DNO)
);

CREATE TABLE WORKS_ON(
	HOURS NUMBER (2),
	SSN REFERENCES EMPLOYEE (SSN), 
	PNO REFERENCES PROJECT(PNO),
	PRIMARY KEY (SSN, PNO)
);

ALTER TABLE DEPARTMENT
ADD MGRSSN REFERENCES EMPLOYEE (SSN);


desc DEPARTMENT;
desc EMPLOYEE;
desc DLOCATION;
desc PROJECT;
desc WORKS_ON;