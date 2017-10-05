CREATE VIEW [SYNCH].[WasteSite]
	AS Select [CompanyCode], [WasteContactCode], [WasteInterventionAddressCode], [WasteCode], [WasteDescription], [WasteVariant]
From [SYNCH].[WasteTmp]
Where [WasteTypeCode]='QCT';
