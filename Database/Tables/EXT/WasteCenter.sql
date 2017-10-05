﻿CREATE TABLE [EXT].[WasteCenter]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
	[CompanyCode] VARCHAR(30),
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
	[Activ] TINYINT NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_WasteCenter] PRIMARY KEY ([SysRecordId]),
)