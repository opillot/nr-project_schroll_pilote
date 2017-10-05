CREATE TABLE [REF].[ServiceOrderLine]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
    [CompanyCode] VARCHAR(30) NULL, 
	[ServiceOrderCode] VARCHAR (20) NOT NULL, 
    [DeliveryLineCode] INT NOT NULL,
    [ProgramHeaderCode] VARCHAR (20) NOT NULL,
	[ProgramLineCode] INT NOT NULL,
	[ConsumableCode] VARCHAR (20) NOT NULL,
	[Description] VARCHAR (100) NOT NULL,
	[Quantity] INT NOT NULL,
	[Unit] VARCHAR (10) NOT NULL,
    CONSTRAINT [PK_ServiceOrderLine] PRIMARY KEY ([SysRecordId]) 
)
