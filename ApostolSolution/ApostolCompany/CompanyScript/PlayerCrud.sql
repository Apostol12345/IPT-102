USE [Player]
GO

TRUNCATE TABLE [dbo].[Players];
GO


--EXEC [dbo].[CreatePlayer] @Id=N'1', @Name=N'Jeff';
EXEC [dbo].[CreatePlayer];
GO