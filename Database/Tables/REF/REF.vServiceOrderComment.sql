CREATE TABLE [REF].[ServiceOrderComment]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1,
	[CompanyCode] varchar(30) NOT NULL,
	[Type] varchar(10),
	[ServiceOrderCode] varchar(10) NOT NULL,
	[Comment] varchar(100), 
    CONSTRAINT [PK_ServiceOrderComment] PRIMARY KEY ([SysRecordId])
)
