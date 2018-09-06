CREATE TABLE [dbo].[Company]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[CompanyName] VARCHAR(256) NOT NULL,
	[CreationTime] DATETIME NOT NULL DEFAULT getDate(),
	[DeletionTime] DATETIME,
)
