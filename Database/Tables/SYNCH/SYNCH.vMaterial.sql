CREATE TABLE [SYNCH].[Material]
(
	[CompanyCode] VARCHAR (30) NOT NULL,
	[MaterialCode] VARCHAR (20) NOT NULL,
	[MaterialDescription] VARCHAR (50) NOT NULL,
	[MaterialType] VARCHAR (10) NOT NULL,
	[MaterialTareKG] decimal(9,3) NOT NULL, 
    CONSTRAINT [PK_Material] PRIMARY KEY ([CompanyCode], [MaterialCode])

)
