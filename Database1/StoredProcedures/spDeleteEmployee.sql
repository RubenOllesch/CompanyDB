CREATE PROCEDURE spDeleteEmployee
   @Id INT
AS
BEGIN
	IF EXISTS (SELECT Id FROM [Employee] WHERE Id = @Id)
		BEGIN
			SET NOCOUNT ON;
			UPDATE [dbo].[Employee]
				SET 
					[DeletionTime] = GETDATE()
				WHERE Id = @Id;
			RETURN @Id;
		END
	RETURN -1;
END
GO