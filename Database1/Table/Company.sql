CREATE TABLE [dbo].[Company]
(
	[Id] INT NOT NULL IDENTITY PRIMARY KEY,
	[CompanyName] NVARCHAR(256) NOT NULL,
	[CreationTime] DATETIME NOT NULL DEFAULT getDate(),
	[DeletionTime] DATETIME,
)
