CREATE PROCEDURE spRestoreRow
(
   @Table NVARCHAR(256),
   @Id INT
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @DBId INT;
	SET @DBId = (SELECT Id FROM @Table WHERE Id = @Id AND DeletionTime IS NOT NULL);
	IF(@DBId IS NOT NULL)
		BEGIN
			UPDATE @Table
			SET DeletionTime = NULL
			WHERE Id = @DBId;
			RETURN 'Restored successfully';
		END
	RETURN 'Not found';
END
GO