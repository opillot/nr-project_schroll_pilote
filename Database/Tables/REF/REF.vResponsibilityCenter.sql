CREATE TABLE [REF].[ResponsibilityCenter]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
	[CompanyCode] varchar(20) NOT NULL,
	[ResponsibilityCenterCode] varchar(10) NOT NULL,
	[Name] varchar(125) NOT NULL,
	[AddressLine] varchar(125) NOT NULL,
	[AddressCity] varchar(30) NOT NULL,
	[AddressPostCode] varchar(20) NOT NULL,
	[AddressCountryCode] varchar(10) NULL,
	[AddressCountryName] varchar(50) NULL,
	[AddressEmail] varchar(80) NULL,
	[AddressPhone] varchar(30) NULL, 
    CONSTRAINT [PK_ResponsibilityCenter] PRIMARY KEY ([SysRecordId]), 
)
