CREATE TABLE [EXT].[Deductions]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1,
    [DeductionCode] VARCHAR (10) NOT NULL,
    [CompanyCode] VARCHAR (30) NOT NULL,
	[Deduction] VARCHAR(30) NOT NULL, 
	[DeductionType] VARCHAR(10) NULL, 
	[Weight] DECIMAL(6, 3) NOT NULL, 
	[DisplayOrder] INT NOT NULL, 
	[BoldDisplay] tinyint NOT NULL, 
    CONSTRAINT [PK_Deductions] PRIMARY KEY ([SysRecordId]),
	--Information pour Synchro
	--[Systeme.Direction] TEXT NOT NULL CHECK([Systeme.Direction] IN ('BOTMOB','MOBTBO')),
	--[Systeme.Type] TEXT NOT NULL CHECK([Systeme.Type] IN ('Update','Insert','Delete','Compare')),
)
