CREATE PROCEDURE [SYNCH].[sp_synchroDataAdd] 
	@schema as varchar(50), @tablename as varchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	Declare @listsynchfields as NVARCHAR(MAX) = SYNCH.fn_listAllFieldForSynchTable(@tablename);
	Declare @listreffields as NVARCHAR(MAX) = @listsynchfields;
	Declare @QUERYInsert as NVARCHAR(MAX) = '';

	Declare @synchtable as varchar(50) = '[SYNCH].[' + @tablename + ']';
	Declare @reftable as varchar(50) = '[' + @schema + '].[' + @tablename + ']';
	
	Set @QUERYInsert = 'Insert Into ' + @reftable + ' (' + @listreffields + ') ' +
			' Select ' + @listsynchfields + ' From ' + @synchtable + 
			' EXCEPT ' + 
			' Select ' + @listreffields + ' From ' + @reftable;
	--Select 'Processing ' + @reftable + ' : ' + @QUERYInsert;
	exec sp_executesql @QUERYInsert;
END