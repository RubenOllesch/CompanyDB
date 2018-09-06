﻿CREATE TABLE [dbo].[Address]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Country] VARCHAR(256) NOT NULL,
	[City] VARCHAR(256) NOT NULL,
	[StreetName] VARCHAR(256) NOT NULL,
	[StreetNumber] INT NOT NULL,
	[CompanyId] INT NOT NULL FOREIGN KEY REFERENCES Company(Id),
	[CreationTime] DATETIME NOT NULL DEFAULT getDate(),
	[DeletionTime] DATETIME,
)