CREATE TABLE [dbo].[Address2Company]
(
	[AddressId] INT NOT NULL REFERENCES Address(Id),
	[CompanyId] INT NOT NULL REFERENCES Company(Id),
	PRIMARY KEY (AddressId, CompanyId)
)
