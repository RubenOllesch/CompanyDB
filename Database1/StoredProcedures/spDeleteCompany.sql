CREATE PROCEDURE spDeleteCompany
   @Id INT
AS
BEGIN
	IF EXISTS (SELECT Id FROM [Company] WHERE Id = @Id)
		BEGIN
			SET NOCOUNT ON;
			UPDATE [dbo].[Company]
				SET 
					[DeletionTime] = GETDATE()
				WHERE Id = @Id;
			RETURN @Id;
		END
	RETURN -1;
END
GO