﻿CREATE TABLE [dbo].[Players]
	(
	[Id] NVARCHAR (8),
	[Name] NVARCHAR(32),

	CONSTRAINT [PK_Players_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
)
GO
	CREATE UNIQUE NONCLUSTERED INDEX [UX_Players_Name] ON [dbo].[Players]([Name] ASC)
	WHERE [Name] IS NOT NULL;