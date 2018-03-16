/**************************************************************************
* Insert multiple rows with static data for your table
* Version: 1.0
* Date: 2018-FEB-26
***************************************************************************/

DECLARE @RowCount INT
DECLARE @RowString VARCHAR(10)
DECLARE @LastId INT

SET @RowCount = 0
SET @LastId = 123

WHILE @RowCount < 100
BEGIN

	SET @RowString = CAST(@RowCount AS VARCHAR(10))
	SET @LastId = @LastId + 1
	
	INSERT INTO [TABLE_NAME]
	(
		[COLUMNS]
	)
	VALUES
	(
		[VALUES]
		,@LastId
		,'Performance test - Felipe. Line:' + @RowString
	)

	SET @RowCount = @RowCount + 1
END



