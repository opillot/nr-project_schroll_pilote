CREATE TABLE [EXT].[WeightServerSetup]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1,
    [CompanyCode] VARCHAR(11),
	[ResponsibilityCenterCode] VARCHAR(20),
	[PublicIP] VARCHAR(30),
	[LocalIP] VARCHAR(30),
	[Port] int,
	[Hostname] VARCHAR(50),
    CONSTRAINT [PK_WeightServerSetup] PRIMARY KEY ([SysRecordId]),
)
