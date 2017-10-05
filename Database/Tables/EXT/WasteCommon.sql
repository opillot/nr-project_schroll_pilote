CREATE TABLE [EXT].[WasteCommon]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
	[WasteCode] VARCHAR (20) NOT NULL,
	[WasteDescription] VARCHAR (100) NOT NULL,
	[WasteVariant] VARCHAR (10) NOT NULL,
	[Activ] TINYINT NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_WasteCommon] PRIMARY KEY ([SysRecordId])
)
