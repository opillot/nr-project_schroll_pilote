CREATE TABLE [REF].[ProgramHeaderStatus]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
    [StatusId] INT NOT NULL, 
    [Label] VARCHAR(50) NULL,
)
