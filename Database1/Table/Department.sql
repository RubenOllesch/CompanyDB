CREATE TABLE [dbo].[Department]
(
	[Id] INT NOT NULL IDENTITY PRIMARY KEY,
	[DepartmentName] VARCHAR(256) NOT NULL,
	[ManagerId] INT FOREIGN KEY REFERENCES Manager(Id),
	[CreationTime] DATETIME NOT NULL DEFAULT getDate(),
	[DeletionTime] DATETIME,
)
