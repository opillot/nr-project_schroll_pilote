CREATE TABLE [PROC].[ProcessHeader]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
	[ProcessHeaderId] [int] NOT NULL,
	[SourceTableId] [int] NOT NULL,
	[FullWorkCode] [varchar](100) NOT NULL,
	[DestTableId] [int] NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
    CONSTRAINT [PK_ProcessHeader] PRIMARY KEY ([SysRecordId]), 
)
