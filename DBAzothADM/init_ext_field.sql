Declare @accountid as int = 1;
Declare @groupid as int = 1;

/*--------------------------------------------------------------------------------------------------*/
/*																									*/
/*											Standard table											*/
/*																									*/
/*--------------------------------------------------------------------------------------------------*/
/*--------------------------------------------------*/
/*						User						*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 3, 50000, 'WasteCenterCode', 'varchar(20)', 1, 0, 1, 0, 0);

/*--------------------------------------------------*/
/*						ProgramHeader					*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(@accountid, 100, 50000, 'StartTime', 'datetime', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(@accountid, 100, 50001, 'EndTime', 'datetime', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(@accountid, 100, 50002, 'BreakTime', 'datetime', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(@accountid, 100, 50003, 'DistanceTravelled', 'decimal(38, 20)', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(@accountid, 100, 50004, 'Status', 'int', 1, 0, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(@accountid, 100, 50005, 'RegistrationNumber', 'varchar(30)', 1, 0, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						ProgramLine					*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 103, 50000, 'StartTime', 'time(7)', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 103, 50001, 'EndTime', 'time(7)', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 103, 50002, 'HandlerCount', 'int', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 103, 50003, 'HandlingTime', 'time(7)', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 103, 50004, 'Status', 'int', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 103, 50005, 'ReasonCode', 'int', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 103, 50006, 'DetailedReason', 'varchar(200)', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 103, 50007, 'AbortedWork', 'tinyint', 1, 0, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 103, 50008, 'DopNumber', 'varchar(20)', 1, 0, 1, 0, 0, 1);



/*--------------------------------------------------*/
/*						ServiceOrder				*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50000, 'LocationCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50001, 'LocationDescription', 'varchar(150)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50002, 'MaterialLineCode', 'int', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50003, 'MaterialTypeDescription', 'varchar(150)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50004, 'WasteCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50005, 'WasteDescription', 'varchar(100)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50006, 'WorkDescription', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50007, 'WasteManagementContactCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50008, 'Operationhours', 'varchar(17)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50011, 'CustomerReference', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50012, 'ScanRequired', 'tinyint', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50013, 'WeightRequired', 'tinyint', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50014, 'Vendor', 'varchar(10)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 50015, 'Assistant', 'varchar(10)', 1, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						ServiceOrderLine			*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 106, 50000, 'Unit', 'varchar(10)', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 106, 50001, 'ProgramHeaderCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 106, 50002, 'ProgramLineCode', 'int', 1, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						CustomerAddress				*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 6, 50000, 'OpeningTime', 'varchar(50)', 1, 1, 0, 0, 0);


/*--------------------------------------------------*/
/*						Geolocalisation				*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 200, 50000, 'CompanyCode', 'varchar(30)', 1, 0, 0, 0, 0);

/*--------------------------------------------------------------------------------------------------*/
/*																									*/
/*											Extension table											*/
/*																									*/
/*--------------------------------------------------------------------------------------------------*/

/*--------------------------------------------------*/
/*						Deduction					*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50000, 1, 'DeductionId', 'int', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50000, 2, 'CompanyCode', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50000, 3, 'DeductionCode', 'varchar(10)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50000, 4, 'Deduction', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50000, 5, 'DeductionType', 'varchar(10)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50000, 6, 'Weight', 'decimal(6, 3)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50000, 7, 'DisplayOrder', 'int', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50000, 8, 'BoldDisplay', 'tinyint', 1, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						WasteCenter					*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 1, 'WasteCenterId', 'int', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 2, 'CompanyCode', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 3, 'WasteCenterCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 4, 'CompanyWasteCenterCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 5, 'Name', 'varchar(125)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 6, 'Address', 'varchar(125)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 7, 'PostCode', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 8, 'City', 'varchar(50)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 9, 'CountryCode', 'varchar(10)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 10, 'PhoneNo', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 11, 'AttachCompany', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 12, 'AttachResponsibilityCenter', 'varchar(10)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 13, 'Activ', 'tinyint', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50001, 14, 'OpeningTime', 'varchar (50)', 1, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						WasteCommon					*/
/*--------------------------------------------------*/
Delete [DBAzothADM].[ACC].[Field_Ext] Where [AccountId] = 1 And [TableId] = 50004;
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50004, 1, 'WasteId', 'int', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50004, 2, 'WasteCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50004, 3, 'WasteDescription', 'varchar(100)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50004, 4, 'WasteVariant', 'varchar(10)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50004, 5, 'Activ', 'tinyint', 1, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						WasteCustomer				*/
/*--------------------------------------------------*/
Delete [DBAzothADM].[ACC].[Field_Ext] Where [AccountId] = 1 And [TableId] = 50005;
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50005, 1, 'WasteId', 'int', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50005, 2, 'CompanyCode', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50005, 3, 'WasteContactCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50005, 4, 'WasteInterventionAddressCode', 'varchar(20)', 1, 1, 0, 6, 2);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50005, 5, 'WasteCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50005, 6, 'WasteDescription', 'varchar(100)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50005, 7, 'WasteVariant', 'varchar(10)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50005, 8, 'Activ', 'tinyint', 1, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						WasteSite					*/
/*--------------------------------------------------*/
Delete [DBAzothADM].[ACC].[Field_Ext] Where [AccountId] = 1 And [TableId] = 50006;
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50006, 1, 'WasteId', 'int', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50006, 2, 'CompanyCode', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50006, 3, 'WasteContactCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50006, 4, 'WasteInterventionAddressCode', 'varchar(20)', 1, 1, 0, 50001, 3);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50006, 5, 'WasteCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50006, 6, 'WasteDescription', 'varchar(100)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50006, 7, 'WasteVariant', 'varchar(10)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50006, 8, 'Activ', 'tinyint', 1, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						ReasonType					*/
/*--------------------------------------------------*/

Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50003, 1, 'CompanyCode', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50003, 2, 'ReasonID', 'int', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50003, 3, 'ReasonDescription', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50003, 4, 'MandatoryComment', 'tinyint', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50003, 5, 'ReasonTypeCode', 'int', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50003, 6, 'ReasonType', 'varchar(50)', 1, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						WeightServerSetup			*/
/*--------------------------------------------------*/

Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50007, 1, 'CompanyCode', 'VARCHAR(11)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50007, 2, 'ResponsibilityCenterCode', 'varchar(20)', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50007, 3, 'PublicIP', 'varchar(30)', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50007, 4, 'LocalIP', 'VARCHAR(30)', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50007, 5, 'Port', 'int', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50007, 6, 'Hostname', 'varchar(50)', 1, 1, 1, 0, 0);
