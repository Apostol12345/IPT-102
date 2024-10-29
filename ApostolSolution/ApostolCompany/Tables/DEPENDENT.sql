CREATE TABLE [dbo].[DEPENDENT]
(
[Essn] CHAR(9) NOT NULL,
[Dname] VARCHAR(15) NOT NULL,
[Sex] CHAR NULL,
[Bdate] DATE NULL,
[Relationship] VARCHAR(8) NULL,

constraint [PK_DEPARTMENT_Dname] primary key (Essn, Dname),
constraint [FK_DEPENDENT_Essn] foreign key (Essn) references EMPLOYEE(Ssn),
);
GO

create nonclustered index [IX_DEPENDENT_Sex] on [DEPENDENT]([Sex] asc)
