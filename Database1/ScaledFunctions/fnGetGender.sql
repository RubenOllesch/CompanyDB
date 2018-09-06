CREATE FUNCTION [dbo].[fnGetGender]
(
	@Gender int
)
RETURNS NVARCHAR(256)
AS
BEGIN
	RETURN CASE @Gender
		WHEN 0 THEN 'male'
		WHEN 1 THEN 'female'
		WHEN 2 THEN 'attack helicopter'
		ELSE 'unknown' END
END
