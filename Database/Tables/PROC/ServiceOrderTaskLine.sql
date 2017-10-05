CREATE TABLE [PROC].[ServiceOrderTaskLine]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
    [ServiceOrderTaskId] INT NOT NULL, 
	[Data1] VARCHAR(255), 
	[Data2] VARCHAR(255), 
	[Data3] VARCHAR(255), 
	[Data4] VARCHAR(255), 
	[Data5] VARCHAR(255), 
	[DataFull] VARCHAR(255), 
    CONSTRAINT [PK_ServiceOrderTaskLine] PRIMARY KEY ([SysRecordId])
)
