CREATE TABLE [dbo].[DEPARTMENT]
(
	[Dname] VARCHAR(15) NOT NULL ,
	[Dnumber] INT NOT NULL PRIMARY KEY,
	[Mgr_ssn] CHAR(9) NOT NULL,
	[Mgr_start_date] DATE,
	PRIMARY KEY (Dnumber),
	UNIQUE (Dname),
	FOREIGN KEY (Mgr_ssn) REFERENCES EMPLOYEE(Ssn) );
