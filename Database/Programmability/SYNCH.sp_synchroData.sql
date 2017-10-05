CREATE PROCEDURE [SYNCH].[sp_synchroData]
	@tablename as varchar(50), @truncatetable as tinyint
AS
BEGIN
	SET NOCOUNT ON;

	Declare @schema as varchar(10);

	Select @schema = IsNull(TABLE_SCHEMA, '')
		From INFORMATION_SCHEMA.TABLES col
		where TABLE_NAME=@tablename And 
			TABLE_SCHEMA != 'SYNCH' And TABLE_SCHEMA != 'STG' And TABLE_SCHEMA != 'USR';
	Select 'Processing ' + @schema + '.' + @tablename + '...';
	if @truncatetable = 1
	BEGIN
		Declare @QUERYRESET as NVARCHAR(500) = 'Truncate table [' + @schema + '].[' + @tablename + ']';

		exec sp_executesql @QUERYRESET;
	END

	if @truncatetable = 0
	BEGIN
		EXEC SYNCH.sp_synchroDataUpdate @schema, @tablename
		IF @tablename = 'User' Or @tablename = 'WasteCenter' Or @tablename = 'Material' Or @tablename = 'Waste'
			EXEC SYNCH.sp_synchroDataDelete @schema, @tablename
	END
	EXEC SYNCH.sp_synchroDataAdd @schema, @tablename

	Declare @maindatabase as varchar(50) = dbo.fn_mainDatabase();
	Declare @accountid as int = dbo.fn_accountid();

	IF @tablename = 'ServiceOrder' And @truncatetable = 1
	BEGIN
		Truncate Table [PROC].[ServiceOrderWork];
		Truncate Table [PROC].[ServiceOrderTask];
		Update [REF].[ServiceOrder] Set ScanRequired = 1 Where [WorkCode] = 'ECH' And MaterialQuantity = 1 And MaterialTypeCode like 'B%';
		EXEC SYNCH.sp_synchroGenerateProcess @tablename
	END

	IF @tablename = 'User' 
	BEGIN
		
		Declare @userquery as nvarchar(max) = 'EXEC ' + @maindatabase + '.dbo.sp_initAccountUser @accountid, @truncatetable';

		exec sp_executesql @userquery, N'@accountid int, @truncatetable tinyint', @accountid, @truncatetable;
	END
	IF @tablename = 'UserModule' 
	BEGIN
		EXEC SYNCH.sp_synchroInitGroupUser @maindatabase, @tablename
	END
END