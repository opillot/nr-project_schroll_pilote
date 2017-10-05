CREATE TABLE [EXT].[WasteSite]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
	[CompanyCode] VARCHAR (30) NOT NULL,
	[WasteContactCode] VARCHAR (20) NOT NULL,
	[WasteInterventionAddressCode] VARCHAR (20) NOT NULL,
	[WasteCode] VARCHAR (20) NOT NULL,
	[WasteDescription] VARCHAR (100) NOT NULL,
	[WasteVariant] VARCHAR (10) NOT NULL,
	[Activ] TINYINT NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_WasteSite] PRIMARY KEY ([SysRecordId])
)
