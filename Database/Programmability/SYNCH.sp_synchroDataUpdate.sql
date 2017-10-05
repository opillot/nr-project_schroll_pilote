CREATE PROCEDURE [SYNCH].[sp_synchroDataUpdate] 
	@schema as varchar(50), @tablename as varchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	Declare @synchtable as varchar(50) = '[SYNCH].[' + @tablename + ']';
	Declare @aliassynchtable as varchar(50) = 'synch';
	Declare @reftable as varchar(50) = '[' + @schema + '].[' + @tablename + ']';

	Declare field_cursor CURSOR FOR Select col.[COLUMN_NAME], Case when col_key.[COLUMN_NAME] Is null then 0 else 1 End As JoinKey
		From INFORMATION_SCHEMA.COLUMNS col
		Left Outer Join INFORMATION_SCHEMA.KEY_COLUMN_USAGE col_key 
			on col_key.TABLE_SCHEMA = col.TABLE_SCHEMA and col_key.TABLE_NAME = col.TABLE_NAME 
					and col_key.[COLUMN_NAME] = col.[COLUMN_NAME]
		where col.[TABLE_SCHEMA] = 'SYNCH' and col.[TABLE_NAME] = @tablename ;

	Declare @fieldname as varchar(50);
	Declare @fieldkey as int;
	Declare @updatefields as VARCHAR(MAX) = '';
	Declare @joinfields as VARCHAR(MAX) = '';

	OPEN field_cursor;
	FETCH NEXT FROM field_cursor INTO @fieldname, @fieldkey
	WHILE @@FETCH_STATUS = 0  
	BEGIN 
		IF @fieldkey = 1
		BEGIN
			IF LEN(@joinfields) > 0
				SET @joinfields = @joinfields + ' And ';
			SET @joinfields = @joinfields + @reftable + '.[' + @fieldname + '] = ' + @aliassynchtable + '.[' + @fieldname + ']';
		END
		ELSE
		BEGIN
			IF LEN(@updatefields) > 0
				SET @updatefields = @updatefields + ', ';
			SET @updatefields = @updatefields + @reftable + '.[' + @fieldname + '] = ' + @aliassynchtable + '.[' + @fieldname + ']';
		END
		
		FETCH NEXT FROM field_cursor INTO @fieldname, @fieldkey
	END   
	CLOSE field_cursor;  
	DEALLOCATE field_cursor; 
	
	Declare @QUERYUpdate as NVARCHAR(MAX) = '';

	Set @QUERYUpdate = 'Update ' + @reftable +
			' Set ' + @updatefields + 
			' From ' + @synchtable + ' ' + @aliassynchtable +
			' Join ' + @reftable + 
			' On ' + @joinfields;
	--Select 'Processing ' + @reftable + ' : ' + @QUERYUpdate;
	exec sp_executesql @QUERYUpdate;
END