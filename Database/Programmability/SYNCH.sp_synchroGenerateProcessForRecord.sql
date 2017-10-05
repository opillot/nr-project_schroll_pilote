CREATE PROCEDURE [SYNCH].[sp_synchroGenerateProcessForRecord]
	@accountid as int, @tableid as int, @recordid as int, @processid as int
AS
BEGIN
	Declare @maindb as varchar(50) = dbo.fn_mainDatabase();
	Declare @QUERY as NVARCHAR(MAX) = '';
	Declare @PARAMS as NVARCHAR(MAX) = '';
	Declare @ServiceOrderWorkId as int;
	
	Set @QUERY = 'INSERT INTO [PROC].[ServiceOrderWork] ' +
			' ([SourceProcessId], [SourceTableId], [SourceRecordId], [Title], [StartTaskId]) ' +
			' SELECT [ProcessHeaderId], @tableid, @recordid, [Title], -1 ' + 
			' FROM [PROC].[ProcessHeader] Where [ProcessHeaderId] = @processid ' +
			' SELECT @ServiceOrderWorkId = SCOPE_IDENTITY(); '; 

	Set @PARAMS = '@tableid int, @recordid int, @processid int, @ServiceOrderWorkId int OUTPUT';

	exec sp_executesql @QUERY, @PARAMS, @tableid, @recordid, @processid, @ServiceOrderWorkId OUTPUT;

	Set @QUERY = 'INSERT INTO [PROC].[ServiceOrderTask] ' +
			' ([ServiceOrderWorkId], [ProcessStepId], [TaskTypeId], [TaskActionTypeId], [TaskProcessTypeId],  ' +
			' [Visible], [Mandatory], [Fixed], [NextTaskId], [PreviousTaskId], [Title], [TaskProcessFieldId], [TaskProcessValue])  ' +
			' SELECT @ServiceOrderWorkId, [ProcessStepId], [StepTypeId], IsNull([StepActionTypeId], -1) , IsNull([StepProcessTypeId], -1), ' + 
			' [Visible], [Mandatory], [Fixed], -1, -1, [Title], IsNull([StepProcessFieldId], -1), [StepProcessValue] ' +
			' FROM [PROC].[ProcessStep] ' +
			' WHERE [ProcessHeaderId] = @processid ' + 
			' Order By [ProcessStepId]; ';
	Set @PARAMS = '@ServiceOrderWorkId int, @processid int';

	exec sp_executesql @QUERY, @PARAMS, @ServiceOrderWorkId, @processid;
END