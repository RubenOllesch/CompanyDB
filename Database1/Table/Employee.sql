CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[FirstName] NVARCHAR(256) NOT NULL,
	[LastName] NVARCHAR(256) NOT NULL,
	[Gender] INT,
	[BirthDate] DATE,
	[DepartmentId] INT FOREIGN KEY REFERENCES Department(Id),
	[CreationTime] DATETIME2 NOT NULL DEFAULT getDate(),
	[DeletionTime] DATETIME2,
)
