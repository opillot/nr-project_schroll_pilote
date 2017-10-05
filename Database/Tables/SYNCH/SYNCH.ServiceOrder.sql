CREATE VIEW [SYNCH].[ServiceOrder]
AS
SELECT [CompanyCode], [ServiceOrderCode], [CustomerCode], [InterventionAddressCode], [LocationCode], [LocationDescription],
	[MaterialLineCode], [MaterialTypeCode], [MaterialTypeDescription], [MaterialQuantity], [WasteCode], [WasteDescription], 
	[WorkCode], [WorkDescription], [WasteManagementContactCode], [WasteManagementInterventionCode], [Operationhours], 
	[CustomerReference], [SignatureRequired], [ScanRequired], [WeightRequired], [Vendor], [Assistant]
FROM            [SYNCH].[ServiceOrderTmp]
Where [CustomerCode] is not null And [InterventionAddressCode] is not null
