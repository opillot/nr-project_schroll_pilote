CREATE TABLE [REF].[Material]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1,
	[CompanyCode] VARCHAR (30) NOT NULL,
	[MaterialCode] VARCHAR (20) NOT NULL,
	[MaterialDescription] VARCHAR (50) NOT NULL,
	[MaterialType] VARCHAR (10) NOT NULL,
	[MaterialTareKG] decimal(9,3) NOT NULL, 
	[Activ] TINYINT NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_Material] PRIMARY KEY ([SysRecordId])

)
