CREATE TABLE [REF].[WorkType]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
    [WorkCode] VARCHAR(20) NOT NULL, 
    [WorkDescription] VARCHAR(150) NULL, 
    CONSTRAINT [PK_WorkType] PRIMARY KEY ([SysRecordId]),
)
