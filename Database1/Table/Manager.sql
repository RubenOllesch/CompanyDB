CREATE TABLE [dbo].[Manager]
(
	[Id] INT NOT NULL PRIMARY KEY REFERENCES Employee(Id),
	[CreationTime] DATETIME NOT NULL DEFAULT getDate(),
	[DeletionTime] DATETIME,
)
