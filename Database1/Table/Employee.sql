CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL IDENTITY PRIMARY KEY,
	[FirstName] VARCHAR(256) NOT NULL,
	[LastName] VARCHAR(256) NOT NULL,
	[DepartmentId] INT FOREIGN KEY REFERENCES Department(Id),
	[CreationTime] DATETIME NOT NULL DEFAULT getDate(),
	[DeletionTime] DATETIME,
)
