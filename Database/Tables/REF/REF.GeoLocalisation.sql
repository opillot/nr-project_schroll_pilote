CREATE TABLE [REF].[GeoLocalisation]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1,
	[CompanyCode] [varchar](20) NOT NULL,
	[ProgramHeaderCode] [varchar](20) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Latitude] [decimal](11, 8) NULL, 
    [Longitude] [decimal](11, 8) NULL,
	[Heading] [decimal](11, 8) NULL,
	[Speed] [decimal](11, 8) NULL,
    CONSTRAINT [PK_GeoLocalisation] PRIMARY KEY ([SysRecordId])
)