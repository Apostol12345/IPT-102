CREATE TABLE [dbo].[DEPARTMENT]
(
	[Dname] VARCHAR(15) NOT NULL ,
	[Dnumber] INT NOT NULL ,
	[Mgr_ssn] CHAR(9) NOT NULL,
	[Mgr_start_date] DATE NOT NULL,
	constraint [PK_Department_Dnumber] primary key clustered ([Dnumber]),
	constraint [FK_Department_Employee_Mgr_ssn] foreign key ([Mgr_ssn]) REFERENCES [Employee] ([Ssn]), 
	constraint [UK_Department_Dname] unique nonclustered (Dname)

	);
	GO

	create nonclustered index [IX_Department_Mgr_ssn] On [dbo].[Department]([Dname] ASC);

	
	
	
