﻿CREATE TABLE [dbo].[WORKS_ON]
(
[Essn] CHAR(9) NOT NULL,
[Pno] INT NOT NULL,
[Hours] DECIMAL(3,1) NOT NULL,

constraint [FK_WORKS_ON_Ssn] foreign key (Essn) references EMPLOYEE(Ssn),
constraint [FK_WORKS_ON_Number] foreign key (Pno) references PROJECT(Pnumber)
);
 
go
create nonclustered index [IX_WORKS_ON_Number] on [WORKS_ON] ([Pno] asc)