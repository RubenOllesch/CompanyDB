CREATE PROCEDURE spCrReAddress
   @Country NVARCHAR(256),
   @City NVARCHAR(256),
   @ZIP NVARCHAR(64),
   @Street NVARCHAR(256),
   @Id INT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @DBId INT;
	SET @DBId = (SELECT Id FROM [Address] WHERE Id = @Id);
	IF(@DBId IS NULL)
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
			SET @DBId = (SELECT SCOPE_IDENTITY());
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
		END
	RETURN @DBId;
END
GO