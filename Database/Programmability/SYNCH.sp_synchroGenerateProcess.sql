CREATE PROCEDURE [SYNCH].[sp_synchroGenerateProcess] 
	@tablename as varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	Declare @accountid as int = dbo.fn_accountId();
	Declare @maindatabase as varchar(50) = dbo.[fn_mainDatabase]();
	Declare @tableid as int; 
	Declare @QUERY as NVARCHAR(MAX) = '';
	Declare @PARAMS as NVARCHAR(MAX) = '';
	
	Set @PARAMS = '@accountid int, @tablename varchar(50), @tableid int OUTPUT';
	Set @QUERY = 'Select @tableid = [' + @maindatabase + '].[dbo].[fn_clientTableIdFromAccountName] (@accountid, @tablename)';

	exec sp_executesql @QUERY, @PARAMS, @accountid, @tablename, @tableid OUTPUT;

	Declare @workcode as varchar(20);
	Declare @scan as int;
	Declare @weight as int;
	Declare @recordid as int;

	Set @PARAMS = '@accountid int, @tableid int, @fullworkcode varchar(50), @processid int OUTPUT';
	Set @QUERY = 'Select @processid = [' + @maindatabase + '].[dbo].[fn_getRecordProcessId] (@accountid, @tableid, @fullworkcode)';

	Declare @PARAMS2 as NVARCHAR(MAX) = '@accountid int, @tableid int, @recordid int, @processid int';
	Declare @QUERY2  as NVARCHAR(MAX) = 'EXEC [SYNCH].[sp_synchroGenerateProcessForRecord] @accountid, @tableid, @recordid, @processid';

	Declare record_cursor CURSOR FOR Select [SysRecordId], [WorkCode], [ScanRequired], [WeightRequired] 
		From [REF].[ServiceOrder]
	OPEN record_cursor;
	FETCH NEXT FROM record_cursor INTO @recordid, @workcode, @scan, @weight  
	WHILE @@FETCH_STATUS = 0  
	BEGIN  
		Declare @fullworkcode as varchar(50) = ''
		Declare @processid as int = 0;

		IF @workcode = 'ECH'
		BEGIN
			Set @fullworkcode = @workcode + '_' + convert(varchar(2), @scan) + '_' + convert(varchar(2), @weight);
		END
		ELSE
		BEGIN
			Set @fullworkcode= @workcode;
		END
		exec sp_executesql @QUERY, @PARAMS, @accountid, @tableid, @fullworkcode, @processid OUTPUT;
		IF @processid > 0 
		BEGIN
			exec sp_executesql @QUERY2, @PARAMS2, @accountid, @tableid, @recordid, @processid;
		END
		FETCH NEXT FROM record_cursor INTO @recordid, @workcode, @scan, @weight  
	END   
	CLOSE record_cursor;  
	DEALLOCATE record_cursor;  
END
