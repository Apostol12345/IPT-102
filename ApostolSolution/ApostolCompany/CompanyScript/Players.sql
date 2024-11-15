USE [master]
GO

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'Player')
BEGIN 
	CREATE DATABASE [Player]
END
GO
 
USE [Player];
GO

IF OBJECT_ID(N'[dbo].[Players]',N'U') IS NULL
BEGIN
	CREATE TABLE [dbo].[Players]
	(
	[Id] NVARCHAR (8),
	[Name] NVARCHAR(32),

	CONSTRAINT [PK_Players_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
	)
	CREATE UNIQUE NONCLUSTERED INDEX [UX_Players_Name] ON [dbo].[Players]([Name] ASC)
	WHERE [Name] IS NOT NULL;
END
GO

IF NOT EXISTS (SELECT TOP(1) 1 FROM [dbo].[Players] WHERE [Id] = N'1')
BEGIN 
	INSERT INTO [dbo].[Players] ([Id],[Name])
	VALUES 
	(N'1',N'Jeff')
END

IF NOT EXISTS (SELECT TOP(3) 1 FROM [dbo].[Players] WHERE [Id] = N'2')
BEGIN 
	INSERT INTO [dbo].[Players] ([Id],[Name])
	VALUES 
	(N'2',N'Teddy')
END
ELSE
BEGIN
	UPDATE [dbo].[Players] SET [Name] = N'Charles'
END
SELECT * FROM [Players]

UPDATE [dbo].[Players]
SET [Name] = N'Andrei'
WHERE [Id] = 2;
SELECT * FROM [Players]

SELECT * FROM [Players]
WHERE [Id] = 1;

DELETE FROM [Players]
WHERE [Id] = 1;