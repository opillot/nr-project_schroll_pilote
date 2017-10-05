CREATE PROCEDURE [SYNCH].[sp_synchroImportExtData]
AS
/******		vCompany	******/
	Select 'Processing vCompany...';
	Truncate Table [DBAzothSchroll].[SYNCH].[Company];
	Insert Into [DBAzothSchroll].[SYNCH].[Company]
		([CompanyCode], [CompanyName], [ContactCode])
	SELECT [CompanyCode], [CompanyName], [ContactCode]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vCompany];
	Select 'vCompany processed';
	
/****** vResponsibilityCenter  ******/
	Select 'Processing vResponsibilityCenter...';
	Truncate Table [DBAzothSchroll].[SYNCH].[ResponsibilityCenter];
	Insert Into [DBAzothSchroll].[SYNCH].[ResponsibilityCenter]
		([CompanyCode], [ResponsibilityCenterCode], [Name], [AddressLine],
		  [AddressCity], [AddressPostCode], [AddressCountryCode], [AddressCountryName], [AddressEMail], [AddressPhone])
	SELECT [CompanyCode], [ResponsibilityCenterCode], [Name1] + ' ' + [Name2], [AddressLine1] + ' ' + [AddressLine2],
		  [City], [PostCode], [CountryCode], [CountryName], [EMail], [Phone]
	 FROM [SERVEURNAV].[DBAzothExchange].[app].[vResponsibilityCenter]
	Select 'vResponsibilityCenter processed';
	
/******		vUser	 ******/
	Select 'Processing vUser..';
	Truncate Table [DBAzothSchroll].[SYNCH].[User];
	Insert Into [DBAzothSchroll].[SYNCH].[User]
		([UserCode], [CompanyCode], [Name], [FirstName], [ResponsibilityCenterCode], [Badge], [WasteCenterCode])
	SELECT [UserCode], [CompanyCode], [Name], [FirstName], [ResponsibilityCenterCode], [Badge], [WasteCenterCode]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vUser]
	Select 'vUser processed';
	
/******		vTaskModule  ******/
	Select 'Processing vTaskModule...';
	Truncate Table [DBAzothSchroll].[SYNCH].[UserModule];
	Insert Into [DBAzothSchroll].[SYNCH].[UserModule]
			([CompanyCode], [UserCode], [Module])
	SELECT [CompanyCode], [UserCode], [TaskModule]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vTaskModule]
	Select 'vTaskModule processed';
	
/******		vDeduction		******/
	Select 'Processing vDeduction...';
	Truncate Table [DBAzothSchroll].[SYNCH].[Deduction];
	Insert Into [DBAzothSchroll].[SYNCH].[Deduction]
		([CompanyCode], [DeductionCode], [Deduction], [DeductionType], [Weight], [DisplayOrder], [BoldDisplay])
	SELECT [CompanyCode], [DeductionCode], [Deduction], [DeductionType], [Weight], [DisplayOrder], [BoldDisplay]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vDeduction]
	Select 'vDeduction processed';
	
/******		vReason		******/
	Select 'Processing vReason...';
	Truncate Table [DBAzothSchroll].[SYNCH].[Reason];
	Insert Into [DBAzothSchroll].[SYNCH].[Reason]
		([CompanyCode], [ReasonID], [ReasonDescription], [MandatoryComment], [ReasonTypeCode], [ReasonType])
	SELECT [CompanyCode], [ReasonID], [ReasonDescription], [MandatoryComment], [ReasonTypeCode], [ReasonType]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vReason]
	Select 'vReason processed';
	
/******		vMaterial	******/
	Select 'Processing vMaterial...';
	Truncate Table [DBAzothSchroll].[SYNCH].[Material];
	Insert Into [DBAzothSchroll].[SYNCH].[Material]
		([CompanyCode], [MaterialCode], [MaterialDescription], [MaterialType], [MaterialTareKG])
	SELECT [CompanyCode], [MaterialCode], [MaterialDescription], [MaterialType], [MaterialTareKG]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vMaterial]
	Select 'vMaterial processed';
	
/******		vProgramHeader		******/
	Select 'Processing vProgramHeader...';
	Truncate Table [DBAzothSchroll].[SYNCH].[ProgramHeader];
	Insert Into [DBAzothSchroll].[SYNCH].[ProgramHeader]
		([ProgramHeaderCode], [CompanyCode], [Date], [UserCode], [VehicleCode], [VehicleInternalId], [RegistrationNumber],
		[TrailerCode], [TrailerInternalId], [ResponsibilityCenterCode], 
		[PlanningType], [StartTime], [EndTime], [BreakTime], [DistanceTravelled])
	SELECT [ProgramHeaderCode], [CompanyCode], [Date], [UserCode], [VehicleCode], [VehicleInternalId], [RegistrationNumber],
		[TrailerCode], [TrailerInternalId], [ResponsibilityCenterCode], 
		[PlanningType], [StartTime], [EndTime], [BreakTime], [DistanceTravelled]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vProgramHeader]
	Select 'vProgramHeader processed';
	
/******		vProgramHeaderComment	******/
	Select 'Processing vProgramHeaderComment...';
	Truncate Table [DBAzothSchroll].[SYNCH].[ProgramHeaderComment];
	Insert Into [DBAzothSchroll].[SYNCH].[ProgramHeaderComment]
		([CompanyCode], [ProgramHeaderCode], [CommentLine], [Comment])
	SELECT [CompanyCode], [ProgramHeaderCode], [CommentLine], [Comment]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vProgramHeaderComment]
	Select 'vProgramHeaderComment processed';
	
/******		vProgramLine	******/
	Select 'Processing vProgramLine...';
	Truncate Table [DBAzothSchroll].[SYNCH].[ProgramLine];
	Insert Into [DBAzothSchroll].[SYNCH].[ProgramLine]
		([ProgramHeaderCode], [CompanyCode], [ProgramLineCode], [SortingNumber], [DopNumber], [ServiceOrder], 
		[StartTime], [EndTime], [HandlerCount],[HandlingTime], [Status], [StatusDescription], [ReasonCode], [DetailedReason], [AbortedWork])
	SELECT [ProgramHeaderCode], [CompanyCode], [ProgramLineCode], [SortingNumber], [DopNumber], [ServiceOrder], 
		[StartTime], [EndTime], [HandlerCount],[HandlingTime], [Status], [StatusDescription], [ReasonCode], [DetailedReason], [AbordedWork]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vProgramLine]
	Select 'vProgramLine processed';
	
/******		vServiceOrder	******/
	Select 'Processing vServiceOrder...';
	Truncate Table [DBAzothSchroll].[SYNCH].[ServiceOrderTmp];
	Insert Into [DBAzothSchroll].[SYNCH].[ServiceOrderTmp]
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
	Select 'vServiceOrder processed';

/******		vDeliveryLine	******/
	Select 'Processing vDeliveryLine...';
	Truncate Table [DBAzothSchroll].[SYNCH].[DeliveryLine];
	Insert Into [DBAzothSchroll].[SYNCH].[DeliveryLine]
		([CompanyCode], [ProgramHeaderCode], [ProgramLineCode], [DeliveryLineCode], [ConsumableCode],
		[Description], [Quantity], [Unit], [ServiceOrderCode])
	SELECT dl.[CompanyCode], dl.[ProgramHeaderCode], dl.[ProgramLineCode], dl.[DeliveryLineCode], dl.[ConsumableCode],
			dl.[Description], dl.[Quantity], dl.[Unit], pl.ServiceOrder
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vDeliveryLine] dl
	INNER JOIN [SERVEURNAV].[DBAzothExchange].[app].[vProgramLine] pl on
		pl.[CompanyCode] = dl.[CompanyCode] and pl.[ProgramHeaderCode] = dl.[ProgramHeaderCode] 
		and pl.[ProgramLineCode] = dl.[ProgramLineCode]
	Select 'vDeliveryLine processed';

/******		vServiceOrderComment	******/
	Select 'Processing vServiceOrderComment...';
	Truncate Table [DBAzothSchroll].[SYNCH].[ServiceOrderComment];
	Insert Into [DBAzothSchroll].[SYNCH].[ServiceOrderComment]
		([CompanyCode], [ServiceOrderCode], [Type], [Comment])
	SELECT [CompanyCode], [ServiceOrderCode], [Type], [Comment]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vServiceOrderComment]
	Select 'vServiceOrderComment processed';

/******		vWaste		******/
	Select 'Processing vWaste...';
	Truncate Table [DBAzothSchroll].[SYNCH].[WasteTmp];
	Insert Into [DBAzothSchroll].[SYNCH].[WasteTmp]
		([CompanyCode], [WasteTypeCode], [WasteContactCode], [WasteInterventionAddressCode], [WasteCode], [WasteDescription], [WasteVariant])
	SELECT [CompanyCode], [WasteTypeCode], [WasteContactCode], [WasteInterventionAddressCode], [WasteCode], [WasteDescription], [WasteVariant]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vWaste]
	Select 'vWaste processed';
	
/******		vWasteCenter	******/
	Select 'Processing vWasteCenter...';
	Truncate Table [DBAzothSchroll].[SYNCH].[WasteCenter];
	Insert Into [DBAzothSchroll].[SYNCH].[WasteCenter]
		([CompanyCode], [WasteCenterCode], [CompanyWasteCenterCode], [Name], [Address], [PostCode],
		[City], [CountryCode], [PhoneNo], [AttachCompany], [AttachResponsibilityCenter])
	SELECT [CompanyCode], [WasteCenterCode], [CompanyWasteCenterCode], [Name] + ' ' + [Name2], [Address] + ' ' + [Adress2], [PostCode],
		[City], [CountryCode], [PhoneNo], [AttachCompany], [AttachResponsibilityCenter]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vWasteCenter]
	Select 'vWasteCenter processed';

/******		vWeightServerSetup	******/
	Select 'Processing vWeightServerSetup...';
	Truncate Table [DBAzothSchroll].[SYNCH].[WeightServerSetup];
	Insert Into [DBAzothSchroll].[SYNCH].[WeightServerSetup]
		([CompanyCode], [ResponsibilityCenterCode], [PublicIP], [LocalIP], [Port], [Hostname])
	SELECT [CompanyCode], [ResponsibilityCenterCode], [PublicIP], [LocalIP], [Port], [Hostname]
	FROM [SERVEURNAV].[DBAzothExchange].[app].[vWeightServerSetup]
	Select 'vWeightServerSetup processed';
RETURN 0
