CREATE TABLE [dbo].[DEPT_LOCATION]
(
[Dnumber] INT NOT NULL constraint [PK_DEPT_LOCATION_Dnumber] primary key,
[Dlocation] VARCHAR(15) NOT NULL constraint [PK_DEPT_LOCATION_Dlocation] primary key,

constraint [FK_DEPT_LOCATION_Dnumber] foreign key (Dnumber) references DEPARTMENT(Dnumber)	
);
go
create nonclustered index[IX_DEPT_LOCATION_Dlocation] on [db0].[DEPT_LOCATION] ([Dlocation])
