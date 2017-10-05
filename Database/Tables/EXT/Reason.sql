CREATE TABLE [EXT].[Reason]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
	[CompanyCode] VARCHAR (30) NOT NULL,
	[ReasonID] INT NOT NULL,
	[ReasonDescription] VARCHAR (30) NOT NULL,
	[MandatoryComment] tinyint NOT NULL,
	[ReasonTypeCode] int NOT NULL,
	[ReasonType] VARCHAR (50) NOT NULL, 
    CONSTRAINT [PK_Reason] PRIMARY KEY ([SysRecordId])
)
