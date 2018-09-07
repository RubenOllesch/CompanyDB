CREATE VIEW [dbo].[viAddress2Company]
	AS SELECT A2C.CompanyId, C.CompanyName, A2C.AddressId
	FROM [Company] C
	INNER JOIN [Address2Company] A2C ON C.Id = A2C.CompanyId 
	INNER JOIN [Address] A ON a2c.AddressId = a.Id
