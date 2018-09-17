CREATE PROCEDURE spCrReCompany
   @CompanyName NVARCHAR(256) = NULL,
   @Id INT = NULL
AS
BEGIN
	SET NOCOUNT ON;
	IF NOT EXISTS (SELECT Id FROM [Company] WHERE Id = @Id AND DeletionTime IS NULL)
		BEGIN
			INSERT INTO [dbo].[Company]
				(
				[CompanyName]
				)
			VALUES
				(
				@CompanyName
				);
			RETURN (SELECT SCOPE_IDENTITY());
		END
	ELSE
		BEGIN
			UPDATE [dbo].[Company]
			SET [CompanyName] = ISNULL(@CompanyName, [CompanyName])
			WHERE Id = @Id;
			RETURN @Id;
		END
END
GO