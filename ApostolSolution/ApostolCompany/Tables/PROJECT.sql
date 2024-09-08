CREATE TABLE [dbo].[PROJECT]
(
[Pname] VARCHAR(15) NOT NULL constraint [UX_PROJECT_Pname] unique nonclustered,
[Pnumber] INT NOT NULL,
[Plocation] VARCHAR(15) constraint [PK_PROJECT_Pnumber] primary key,
[Dnum] INT NOT NULL,
);
go 
create nonclustered index [IX_PROJECT_Plocation] on [PROJECT] ([Plocation])
