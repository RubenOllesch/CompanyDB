CREATE VIEW [dbo].[viAddress]
	AS SELECT 
		Id,
		Country,
		City,
		ZIP,
		Street,
		CreationTime 
	FROM [Address]
	WHERE DeletionTime IS NULL
