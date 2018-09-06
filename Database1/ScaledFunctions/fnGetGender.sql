CREATE FUNCTION [dbo].[fnGetGender]
(
	@Gender INT
)
RETURNS NVARCHAR(256)
AS
BEGIN
	RETURN CASE @Gender
		WHEN 1 THEN 'male'
		WHEN 2 THEN 'female'
		WHEN 3 THEN 'attack helicopter'
		ELSE 'unknown' END;
END
