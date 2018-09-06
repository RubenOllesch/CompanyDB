CREATE PROCEDURE spCrReCompany
   @CompanyName NVARCHAR(256),
   @Id INT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @DBId INT;
	SET @DBId = (SELECT Id FROM Company WHERE Id = @Id);
	IF(@DBId IS NULL)
		BEGIN
			INSERT INTO [dbo].[Company]
				([CompanyName])
			VALUES
				(@CompanyName);
			SET @DBId = (SELECT SCOPE_IDENTITY());
		END
	ELSE
		BEGIN
			UPDATE [dbo].[Company]
			SET [CompanyName] = ISNULL(@CompanyName, [CompanyName])
			WHERE Id = @Id;
		END
	RETURN @DBId;
END
GO