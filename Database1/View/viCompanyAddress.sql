CREATE VIEW [dbo].[viCompanyAddress]
	AS SELECT 
		A2C.CompanyId,
		C.CompanyName,
		A2C.AddressId,
		A.Country,
		A.City,
		A.ZIP,
		A.Street
	FROM [Company] C
	INNER JOIN [Address2Company] A2C
		ON C.Id = A2C.CompanyId 
	INNER JOIN [Address] A
		ON A2C.AddressId = A.Id
