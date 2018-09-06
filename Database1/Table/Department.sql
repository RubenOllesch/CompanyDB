CREATE TABLE [dbo].[Department]
(
	[Id] INT NOT NULL IDENTITY PRIMARY KEY,
	[DepartmentName] NVARCHAR(256) NOT NULL,
	[ManagerId] INT FOREIGN KEY REFERENCES Employee(Id),
	[CreationTime] DATETIME2 NOT NULL DEFAULT getDate(),
	[DeletionTime] DATETIME2,
)
