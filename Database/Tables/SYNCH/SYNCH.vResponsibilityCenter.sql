CREATE TABLE [SYNCH].[ResponsibilityCenter]
(
	[CompanyCode] varchar(20) NOT NULL,
	[ResponsibilityCenterCode] varchar(10) NOT NULL,
	[Name] varchar(125) NOT NULL,
	[AddressLine] varchar(125) NOT NULL,
	[AddressCity] varchar(30) NULL,
	[AddressPostCode] varchar(20) NULL,
	[AddressCountryCode] varchar(10) NULL,
	[AddressCountryName] varchar(50) NULL,
	[AddressEmail] varchar(80) NULL,
	[AddressPhone] varchar(30) NULL, 
    CONSTRAINT [PK_ResponsibilityCenter] PRIMARY KEY ([CompanyCode], [ResponsibilityCenterCode])
)
