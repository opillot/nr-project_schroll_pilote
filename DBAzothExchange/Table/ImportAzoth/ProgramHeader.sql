CREATE TABLE [AZT].[ProgramHeader]
(
	[RecordId] INT NOT NULL  PRIMARY KEY IDENTITY,
	[RecordDateTime] datetime NOT NULL DEFAULT GetDate(),
	[AztRecordId] INT NOT NULL,
	[AztStatus] [int] NOT NULL DEFAULT 1,
	[AztUserId] [int] NOT NULL DEFAULT -1,
	[AztSecurityCount] [int] NOT NULL DEFAULT 0,
	[ProgramHeaderCode] [varchar](20) NOT NULL,
	[CompanyCode] [varchar](30) NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[BreakTime] [datetime] NULL,
	[DistanceTravelled] [decimal](38, 20) NULL, 
    [Processed] TINYINT NOT NULL DEFAULT 0,
)
