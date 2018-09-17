CREATE PROCEDURE spCrReAddress
   @Country NVARCHAR(256) = NULL,
   @City NVARCHAR(256) = NULL,
   @ZIP NVARCHAR(64) = NULL,
   @Street NVARCHAR(256) = NULL,
   @Id INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	IF NOT EXISTS (SELECT Id FROM [Address] WHERE Id = @Id AND DeletionTime IS NULL)
		BEGIN
			INSERT INTO [dbo].[Address]
				(
				[Country],
				[City],
				[ZIP],
				[Street]
				)
			VALUES
				(
				@Country,
				@City,
				@ZIP,
				@Street
				);
			RETURN (SELECT SCOPE_IDENTITY());
		END
	ELSE
		BEGIN
			UPDATE [dbo].[Address]
			SET 
				[Country] = ISNULL(@Country, [Country]),
				[City] = ISNULL(@City, [City]),
				[ZIP] = ISNULL(@ZIP, [ZIP]),
				[Street] = ISNULL(@Street, [Street])
			WHERE Id = @Id;
			RETURN @Id;
		END
END
GO