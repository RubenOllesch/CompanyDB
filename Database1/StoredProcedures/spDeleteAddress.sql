CREATE PROCEDURE spDeleteAddress
   @Id INT
AS
BEGIN
	IF EXISTS (SELECT Id FROM [Address] WHERE Id = @Id)
		BEGIN
			SET NOCOUNT ON;
			UPDATE [dbo].[Address]
				SET 
					[DeletionTime] = GETDATE()
				WHERE Id = @Id;
			RETURN @Id;
		END
	RETURN -1;
END
GO