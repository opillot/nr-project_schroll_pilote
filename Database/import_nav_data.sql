/****** vCompany  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[Company];
Insert Into [DBAzothSchroll].[SYNCH].[Company]
([CompanyCode], [CompanyName], [ContactCode])
SELECT [CompanyCode], [CompanyName], [ContactCode]
FROM [SERVEURNAV].[DBAzothExchange].[app].[vCompany];

/****** vResponsibilityCenter  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[ResponsibilityCenter];
Insert Into [DBAzothSchroll].[SYNCH].[ResponsibilityCenter]
([CompanyCode], [ResponsibilityCenterCode], [Name], [AddressLine],
      [City], [PostCode], [CountryCode], [CountryName], [EMail], [Phone])
SELECT [CompanyCode], [ResponsibilityCenterCode], [Name1] + ' ' + [Name2], [AddressLine1] + ' ' + [AddressLine2],
      [City], [PostCode], [CountryCode], [CountryName], [EMail], [Phone]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vResponsibilityCenter]

/****** vUser  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[User];
Insert Into [DBAzothSchroll].[SYNCH].[User]
([UserCode], [CompanyCode], [Name], [FirstName], [ResponsibilityCenterCode], [Badge], [WasteCenterCode])
SELECT [UserCode], [CompanyCode], [Name], [FirstName], [ResponsibilityCenterCode], [Badge], [WasteCenterCode]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vUser]

/****** vTaskModule  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[UserModule];
Insert Into [DBAzothSchroll].[SYNCH].[UserModule]
([UserCode], [CompanyCode], [Module])
SELECT [CompanyCode], [UserCode], [TaskModule]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vTaskModule]


/****** vDeduction  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[Deduction];
Insert Into [DBAzothSchroll].[SYNCH].[Deduction]
([CompanyCode], [DeductionCode], [Deduction], [DeductionType], [Weight], [DisplayOrder], [BoldDisplay])
SELECT [CompanyCode], [DeductionCode], [Deduction], [DeductionType], [Weight], [DisplayOrder], [BoldDisplay]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vDeduction]

/****** vReason  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[Reason];
Insert Into [DBAzothSchroll].[SYNCH].[Reason]
([CompanyCode], [ReasonID], [ReasonDescription], [MandatoryComment], [ReasonTypeCode], [ReasonType])
SELECT [CompanyCode], [ReasonID], [ReasonDescription], [MandatoryComment], [ReasonTypeCode], [ReasonType]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vReason]

/****** vMaterial  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[Material];
Insert Into [DBAzothSchroll].[SYNCH].[Material]
([CompanyCode], [MaterialCode], [MaterialDescription], [MaterialType], [MaterialTareKG])
SELECT [CompanyCode], [MaterialCode], [MaterialDescription], [MaterialType], [MaterialTareKG]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vMaterial]


/****** vProgramHeader  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[ProgramHeader];
Insert Into [DBAzothSchroll].[SYNCH].[ProgramHeader]
([ProgramHeaderCode], [CompanyCode], [Date], [UserCode], [VehicleCode], [VehicleInternalId], [RegistrationNumber],
	[TrailerCode], [TrailerInternalId], [ResponsibilityCenterCode], 
	[PlanningType], [StartTime], [EndTime], [BreakTime], [DistanceTravelled])
SELECT [ProgramHeaderCode], [CompanyCode], [Date], [UserCode], [VehicleCode], [VehicleInternalId], [RegistrationNumber],
	[TrailerCode], [TrailerInternalId], [ResponsibilityCenterCode], 
	[PlanningType], [StartTime], [EndTime], [BreakTime], [DistanceTravelled]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vProgramHeader]


/****** vProgramHeaderComment  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[ProgramHeaderComment];
Insert Into [DBAzothSchroll].[SYNCH].[ProgramHeaderComment]
([CompanyCode], [ProgramHeaderCode], [CommentLine], [Comment])
SELECT [CompanyCode], [ProgramHeaderCode], [CommentLine], [Comment]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vProgramHeaderComment]

/****** vProgramLine  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[ProgramLine];
Insert Into [DBAzothSchroll].[SYNCH].[ProgramLine]
([ProgramHeaderCode], [CompanyCode], [ProgramLineCode], [SortingNumber], [DopNumber], [ServiceOrder], 
	[StartTime], [EndTime], [HandlerCount],[HandlingTime], [Status], [StatusDescription], [ReasonCode], [DetailedReason], [AbortedWork])
SELECT [ProgramHeaderCode], [CompanyCode], [ProgramLineCode], [SortingNumber], [DopNumber], [ServiceOrder], 
	[StartTime], [EndTime], [HandlerCount],[HandlingTime], [Status], [StatusDescription], [ReasonCode], [DetailedReason], [AbortedWork]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vProgramLine]

/****** vServiceOrder  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[ServiceOrder];
Insert Into [DBAzothSchroll].[SYNCH].[ServiceOrder]
([CompanyCode], [ServiceOrderCode], [CustomerCode], [InterventionAddressCode],
	[Name], [Address], [PostCode], [City], [Country_Region Code], [LocationCode],
	[LocationDescription], [MaterialLineCode], [MaterialTypeCode], [MaterialTypeDescription],
	[MaterialQuantity], [WasteCode], [WasteDescription], [WorkCode], [WorkDescription], [WasteManagementContactCode],
	[WasteManagementInterventionCode], [Operationhours], [OpeningTime], [PhoneNumber], [CustomerReference],
	[SignatureRequired], [ScanRequired], [WeightRequired], [Vendor], [Assistant])
SELECT [CompanyCode], [ServiceOrder], [CustomerCode], [InterventionAddressCode],
	[Name] + ' ' + [Name 2], [Address1] + ' ' + [Address2], [PostCode], [City], [Country_Region Code],
	[LocationCode], [LocationDescription], [MaterialLineCode], [MaterialTypeCode], [MaterialTypeDescription],
	[MaterialQuantity], [WasteCode], [WasteDescription], [WorkCode], [WorkDescription], [WasteManagementContactCode],
	[WasteManagementInterventionCode], [Operationhours], [OpeningTime], [PhoneNumber], [CustomerReference],
	[SignatureRequired], [ScanRequired], [WeightRequired], [Vendor], [Assistant]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vServiceOrder]

/****** vServiceOrderComment  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[ServiceOrderComment];
Insert Into [DBAzothSchroll].[SYNCH].[ServiceOrderComment]
([CompanyCode], [ServiceOrderCode], [Type], [Comment])
SELECT [CompanyCode], [ServiceOrderCode], [Type], [Comment]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vServiceOrderComment]


/****** vWaste  ******/

/****** vWasteCenter  ******/
Truncate Table [DBAzothSchroll].[SYNCH].[WasteCenter];
Insert Into [DBAzothSchroll].[SYNCH].[WasteCenter]
([CompanyCode], [WasteCenterCode], [CompanyWasteCenterCode], [Name], [Address], [PostCode],
	[City], [CountryCode], [PhoneNo], [AttachCompany], [AttachResponsibilityCenter])
SELECT [CompanyCode], [WasteCenterCode], [CompanyWasteCenterCode], [Name] + ' ' + [Name2], [Address] + ' ' + [Adress2], [PostCode],
	[City], [CountryCode], [PhoneNo], [AttachCompany], [AttachResponsibilityCenter]
  FROM [SERVEURNAV].[DBAzothExchange].[app].[vWasteCenter]

/****** vZone  ******/

