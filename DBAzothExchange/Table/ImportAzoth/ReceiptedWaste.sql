CREATE TABLE [AZT].[ReceiptedWaste]
(
	[RecordId] INT NOT NULL  PRIMARY KEY IDENTITY,
	[RecordDateTime] datetime NOT NULL DEFAULT GetDate(),
	[AztRecordId] INT NOT NULL,
	[AztStatus] [int] NOT NULL DEFAULT 1,
	[AztUserId] [int] NOT NULL DEFAULT -1,
	[ProgramHeaderCode] [varchar](20) NOT NULL,
	[CompanyCode] [varchar](30) NOT NULL,
	[ProgramLineCode] [int] NOT NULL,
	[WasteCode] VARCHAR (20) NOT NULL,
	[WasteVariant] VARCHAR (10) NOT NULL,
	[Unit] [varchar](5) NOT NULL,
	[Weight] decimal(6,3) NOT NULL,
	[TicketNo] [varchar](30) NOT NULL,
	[TotalWeight] decimal(6,3) NOT NULL,
    [Processed] TINYINT NOT NULL DEFAULT 0,
)
