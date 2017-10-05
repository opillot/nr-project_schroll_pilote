CREATE TABLE [REF].[Company]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1,
    [CompanyCode] VARCHAR (30) NOT NULL,
    [CompanyName] VARCHAR(30) NOT NULL,
	[ContactCode] VARCHAR (20) NOT NULL,
    CONSTRAINT [PK_Company] PRIMARY KEY ([SysRecordId])
)