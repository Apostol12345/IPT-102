﻿CREATE TABLE [dbo].[WORKS_ON]
(
[Essn] CHAR(9) NOT NULL,
[Pno] INT NOT NULL,
[Hours] DECIMAL(3,1) NOT NULL,


PRIMARY KEY (Essn, Pno),
FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn),
FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber) 
);
