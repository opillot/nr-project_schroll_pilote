﻿CREATE TABLE [REF].[ServiceOrder]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1, 
    [CompanyCode] VARCHAR(30) NULL, 
	[ServiceOrderCode] VARCHAR(20) NOT NULL, 
    [CustomerCode] VARCHAR(20) NULL, 
    [InterventionAddressCode] VARCHAR(20) NULL,
	[LocationCode] VARCHAR(20) NULL,
	[LocationDescription] VARCHAR(150) NOT NULL,
	[MaterialLineCode] int NULL,
	[MaterialTypeCode] VARCHAR(20) NULL,
	[MaterialTypeDescription] VARCHAR(150) NOT NULL,
	[MaterialQuantity] int NULL,
	[WasteCode] VARCHAR(20) NULL,
	[WasteDescription] VARCHAR(100) NOT NULL,
	[WorkCode] VARCHAR(20) NULL,
	[WorkDescription] VARCHAR(30) NOT NULL,
	[WasteManagementContactCode] VARCHAR(20) NULL,
	[WasteManagementInterventionCode] VARCHAR(20) NULL,
	[Operationhours] VARCHAR(17) NULL,
	[CustomerReference] VARCHAR(20) NULL,
	[SignatureRequired] TINYINT NULL,
	[ScanRequired] TINYINT NULL,
	[WeightRequired] TINYINT NULL, 
	[Vendor] varchar(10),
	[Assistant] varchar(10),
    CONSTRAINT [PK_ServiceOrder] PRIMARY KEY ([SysRecordId]) 
)