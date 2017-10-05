CREATE TABLE [SYNCH].[ServiceOrderComment]
(
	[CompanyCode] varchar(30) NOT NULL,
	[Type] varchar(10) NOT NULL,
	[ServiceOrderCode] varchar(10) NOT NULL,
	[Comment] varchar(100), 
    CONSTRAINT [PK_ServiceOrderComment] PRIMARY KEY ([CompanyCode], [Type], [ServiceOrderCode])
)
