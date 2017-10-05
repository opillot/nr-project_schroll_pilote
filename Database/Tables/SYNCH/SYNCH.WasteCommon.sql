CREATE VIEW [SYNCH].[WasteCommon]
	AS Select [WasteCode], [WasteDescription], [WasteVariant] 
From [SYNCH].[WasteTmp]
WHere [WasteTypeCode] = 'QCO';
