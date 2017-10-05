CREATE TABLE [REF].[CustomerAddress]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
	[CompanyCode] VARCHAR(30) NOT NULL,
	[InterventionAddressCode] VARCHAR(20) NOT NULL,
	[CustomerCode] VARCHAR(20) NOT NULL,
	[Name] VARCHAR(125),
	[Address] VARCHAR(125),
	[PostCode] VARCHAR(20),
	[City] VARCHAR(30),
	[Country_Region Code] VARCHAR(10),
	[OpeningTime] VARCHAR(50) NULL,
	[PhoneNumber] VARCHAR(30) NULL,
    CONSTRAINT [PK_CustomerAddress] PRIMARY KEY ([SysRecordId]),
)
