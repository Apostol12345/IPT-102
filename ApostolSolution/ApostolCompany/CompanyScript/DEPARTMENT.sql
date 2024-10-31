﻿USE ApostolCompany
GO

insert into dbo.DEPARTMENT
values
(N'HDY', N'01', N'12', N'1695-03-04' ),
(N'FGP', N'02', N'23', N'1978-11-23' ),
(N'TDO', N'03', N'34', N'1997-12-30' ),
(N'APN', N'04', N'45', N'1999-03-13' ),
(N'DTO', N'05', N'56', N'2007-10-19' )
GO

SELECT * FROM dbo.DEPARTMENT;
GO


UPDATE dbo.DEPARTMENT
SET [Dname] = 'Jeff'
WHERE [Dnumber] = 1;
SELECT * FROM dbo.DEPARTMENT;


DELETE FROM dbo.DEPARTMENT


SELECT [Mgr_ssn],[Mgr_start_date]
FROM DEPARTMENT
LEFT JOIN EMPLOYEE 
ON DEPARTMENT.[Mgr_ssn] = EMPLOYEE.[Ssn]