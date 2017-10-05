CREATE TABLE [SYNCH].[DeliveryLine]
(
	[CompanyCode] VARCHAR (30) NOT NULL,
	[ProgramHeaderCode] VARCHAR (20) NOT NULL,
	[ProgramLineCode] INT NOT NULL,
	[ServiceOrderCode] VARCHAR (20) NOT NULL,
	[DeliveryLineCode] INT NOT NULL,
	[ConsumableCode] VARCHAR (20) NOT NULL,
	[Description] VARCHAR (100) NOT NULL,
	[Quantity] INT NOT NULL,
	[Unit] VARCHAR (10) NOT NULL,
)
