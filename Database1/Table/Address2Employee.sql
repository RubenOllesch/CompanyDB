CREATE TABLE [dbo].[Address2Employee]
(
	[AddressId] INT NOT NULL REFERENCES Address(Id),
	[EmployeeId] INT NOT NULL REFERENCES Employee(Id),
	PRIMARY KEY (AddressId, EmployeeId)
)