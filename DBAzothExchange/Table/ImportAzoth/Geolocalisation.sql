CREATE TABLE [AZT].[Geolocalisation]
(
	[RecordId] INT NOT NULL  PRIMARY KEY IDENTITY,
	[RecordDateTime] datetime NOT NULL DEFAULT GetDate(),
	[AztRecordId] INT NOT NULL,
	[AztStatus] [int] NOT NULL DEFAULT 1,
	[AztUserId] [int] NOT NULL DEFAULT -1,
	[CompanyCode] [varchar](30) NOT NULL,
	[ProgramHeaderCode] [varchar](20) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Latitude] [decimal](11, 8) NOT NULL,
	[Longitude] [decimal](11, 8) NOT NULL,
	[Heading] [decimal](11, 8) NULL,
	[Speed] [decimal](11, 8) NULL,
	[Processed] TINYINT NOT NULL DEFAULT 0
)
