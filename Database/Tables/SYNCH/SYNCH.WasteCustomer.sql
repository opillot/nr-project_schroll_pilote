CREATE VIEW [SYNCH].[WasteCustomer]
	AS Select [CompanyCode], [WasteContactCode], [WasteInterventionAddressCode], [WasteCode], [WasteDescription], [WasteVariant] 
From [SYNCH].[WasteTmp] WHere [WasteTypeCode]='QCL';
