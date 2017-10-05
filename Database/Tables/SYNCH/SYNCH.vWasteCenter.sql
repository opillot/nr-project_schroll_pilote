CREATE TABLE [SYNCH].[WasteCenter]
(
	[CompanyCode] VARCHAR(30) NOT NULL,
	[WasteCenterCode] VARCHAR(20) NOT NULL,
	[CompanyWasteCenterCode] tinyint,
	[Name] VARCHAR(125),
	[Address] VARCHAR(125),
	[PostCode] VARCHAR(20),
	[City] VARCHAR(30),
	[CountryCode] VARCHAR(10),
	[PhoneNo] VARCHAR(30),
	[AttachCompany] VARCHAR(30),
	[AttachResponsibilityCenter] VARCHAR(10), 
	[OpeningTime] VARCHAR(50) NULL,
    CONSTRAINT [PK_WasteCenter] PRIMARY KEY ([CompanyCode], [WasteCenterCode]),
)
