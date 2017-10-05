CREATE TABLE [AZT].[ScannedMaterial]
(
	[RecordId] INT NOT NULL  PRIMARY KEY IDENTITY,
	[RecordDateTime] datetime NOT NULL DEFAULT GetDate(),
	[AztRecordId] INT NOT NULL,
	[AztStatus] [int] NOT NULL DEFAULT 1,
	[AztUserId] [int] NOT NULL DEFAULT -1,
	[CompanyCode] [varchar](30) NOT NULL,
	[ProgramHeaderCode] [varchar](20) NOT NULL,
	[ProgramLineCode] [int] NOT NULL,
	[MaterialCode] VARCHAR (20) NOT NULL,
	[PosX] decimal(11, 8) NOT NULL,
	[PosY] decimal(11, 8) NOT NULL,
	[ActionCode] varchar (10) NOT NULL,
    [Processed] TINYINT NOT NULL DEFAULT 0,
)
-- [ActionCode] :-- PLA : dépose d'un matériel chez le client dans le cas d'un programme
				 -- DEP : dépose d'un matériel hors programme