CREATE TABLE [SYNCH].[Company]
(
    [CompanyCode] VARCHAR (30) NOT NULL,
    [CompanyName] VARCHAR(30) NOT NULL,
	[ContactCode] VARCHAR (20) NOT NULL, 
    CONSTRAINT [PK_Company] PRIMARY KEY ([CompanyCode])
)