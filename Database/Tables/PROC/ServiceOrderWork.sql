CREATE TABLE [PROC].[ServiceOrderWork]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
	[SourceProcessId] INT NOT NULL, 
	[SourceTableId] INT NOT NULL, 
	[SourceRecordId] INT NOT NULL, 
	[Title] VARCHAR(50) NOT NULL, 
	[StartTaskId] INT NOT NULL, 
    [Status] INT NOT NULL DEFAULT 0, 
    [OperationCustomer] TINYINT NOT NULL DEFAULT 0, 
    [OperationRcpt] TINYINT NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_ServiceOrderWork] PRIMARY KEY ([SysRecordId]), 
)
