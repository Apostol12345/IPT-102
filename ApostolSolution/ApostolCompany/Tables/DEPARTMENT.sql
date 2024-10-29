CREATE TABLE [dbo].[DEPARTMENT]
(
	[Dname] VARCHAR(15) NOT NULL ,
	[Dnumber] INT NOT NULL ,
	[Mgr_ssn] CHAR(9) NOT NULL,
	[Mgr_start_date] DATE NOT NULL,
	constraint [PK_DEPARTMENT_Dnumber] primary key clustered ([Dnumber]),
	
	constraint [UK_DEPARTMENT_Dname] unique nonclustered (Dname), 
    CONSTRAINT [FK_DEPARTMENT_Mgr_ssn] FOREIGN KEY ([Mgr_ssn]) REFERENCES [EMPLOYEE]([Ssn])

	);
	GO

	create nonclustered index [IX_DEPARTMENT_Mgr_ssn] On [dbo].[DEPARTMENT]([Dname] ASC);

	
	
	
