/*--------------------------------------------------*/
/*						Company						*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 1, 2, 'CompanyCode', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 1, 3, 'CompanyName', 'varchar(30)', 1, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						BusinessUnit				*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 2, 2, 'ResponsibilityCenterCode', 'varchar(10)', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 2, 3, 'CompanyCode', 'varchar(20)', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 2, 4, 'Name', 'varchar(125)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 2, 5, 'AddressLine', 'varchar(125)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 2, 6, 'AddressPostCode', 'varchar(30)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 2, 7, 'AddressCity', 'varchar(30)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 2, 8, 'AddressCountryCode', 'varchar(10)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 2, 9, 'AddressCountryName', 'varchar(50)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 2, 10, 'AddressPhone', 'varchar(30)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 2, 11, 'AddressEmail', 'varchar(80)', 1, 0, 1, 0, 0);

/*--------------------------------------------------*/
/*						User						*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 3, 4, 'CompanyCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 3, 2, 'UserCode', 'varchar(20)', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 3, 3, 'ResponsibilityCenterCode', 'varchar(20)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 3, 6, 'Name', 'varchar(50)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 3, 5, 'FirstName', 'varchar(50)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 3, 10, 'Badge', 'int', 1, 0, 0, 0, 0); 
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 3, 11, 'Activ', 'tinyint', 1, 0, 0, 0, 0); 
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 3, 12, 'UserCode', 'varchar(50)', 1, 0, 0, 0, 0); 

/*--------------------------------------------------*/
/*					CustomerAddress					*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 6, 2, 'InterventionAddressCode', 'varchar(20)', 1, 0, 0, 104, 5); 
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 6, 3, 'CompanyCode', 'varchar(30)', 1, 0, 0, 0, 0); 
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 6, 4, 'CustomerCode', 'varchar(20)', 1, 0, 0, 0, 0); 
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 6, 6, 'Name', 'varchar(125)', 1, 0, 0, 0, 0); 
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 6, 7, 'Address', 'varchar(125)', 1, 0, 0, 0, 0); 
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 6, 8, 'City', 'varchar(30)', 1, 0, 0, 0, 0); 
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 6, 9, 'PostCode', 'varchar(20)', 1, 0, 0, 0, 0); 
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 6, 10, 'Country_Region Code', 'varchar(10)', 1, 0, 0, 0, 0); 
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 6, 12, 'PhoneNumber', 'varchar(30)', 1, 0, 0, 0, 0); 

/*--------------------------------------------------*/
/*						Planning					*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 100, 3, 'CompanyCode', 'varchar(30)', 1, 1, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 100, 2, 'ProgramHeaderCode', 'varchar(20)', 1, 1, 1, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 100, 9, 'Date', 'date', 1, 0, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 100, 5, 'UserCode', 'varchar(20)', 1, 0, 1, 3, 2, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 100, 10, 'VehicleInternalId', 'varchar(50)', 1, 0, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 100, 11, 'TrailerInternalId', 'varchar(50)', 1, 0, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 100, 4, 'ResponsibilityCenterCode', 'varchar(10)', 1, 0, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 100, 6, 'PlanningType', 'varchar(20)', 1, 0, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						PlanningCommentar			*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 112, 3, 'CompanyCode', 'varchar(30)', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 112, 4, 'ProgramHeaderCode', 'varchar(20)', 1, 1, 1, 100, 2);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 112, 5, 'CommentLine', 'int', 0, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 112, 6, 'Comment', 'varchar(80)', 0, 0, 1, 0, 0);

/*--------------------------------------------------*/
/*						Program_Line				*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 103, 6, 'ProgramLineCode', 'int', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 103, 3, 'CompanyCode', 'varchar(30)', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 103, 4, 'ProgramHeaderCode', 'varchar(20)', 1, 1, 1, 100, 2);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 103, 5, 'ServiceOrder', 'varchar(10)', 1, 0, 0, 0, 0);


/*--------------------------------------------------*/
/*						ServiceOrder				*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 2, 'ServiceOrderCode', 'varchar(20)', 1, 1, 0, 103, 5);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 4, 'CustomerCode', 'varchar(20)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 3, 'CompanyCode', 'varchar(30)', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 5, 'InterventionAddressCode', 'varchar(20)', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 9, 'MaterialTypeCode', 'varchar(20)', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 12, 'MaterialQuantity', 'int', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 7, 'WorkCode', 'varchar(20)', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 104, 11, 'WasteManagementInterventionCode', 'varchar(20)', 1, 0, 0, 0, 0);

/*--------------------------------------------------*/
/*						ServiceOrderComment			*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LInkedField])  
				Values(1, 111,	3,'CompanyCode', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LInkedField])  
				Values(1, 111,	7,'Type', 'varchar(10)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LInkedField])  
				Values(1, 111,	4,'ServiceOrderCode', 'varchar(10)', 1, 1, 0, 104, 2);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LInkedField])  
				Values(1, 111,	5,'Comment', 'varchar(100)', 1, 1, 0, 0, 0);

/*--------------------------------------------------*/
/*						ServiceOrderLine			*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 106, 3, 'CompanyCode', 'varchar(30)', 1, 1, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 106, 4, 'ServiceOrderCode', 'varchar(20)', 1, 1, 0, 104, 2);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 106, 2, 'DeliveryLineCode', 'int', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 106, 5, 'ConsumableCode', 'varchar(20)', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 106, 6, 'Quantity', 'int', 1, 0, 0, 0, 0);

/*--------------------------------------------------*/
/*						Matériel					*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 109, 2, 'CompanyCode', 'varchar(30)', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 109, 3, 'MaterialCode', 'varchar(20)', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 109, 4, 'MaterialDescription', 'varchar(50)', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 109, 6, 'MaterialType', 'varchar(10)', 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 109, 7, 'MaterialTareKG', 'decimal(9, 3)', 1, 0, 0, 0, 0);

/*--------------------------------------------------*/
/*						GeoLocalisation					*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 200, 3, 'ProgramHeaderCode', 'varchar(20)', 1, 0, 0, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 200, 2, 'Date', 'datetime', 1, 0, 0, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 200, 6, 'Latitude', 'decimal(11, 8)', 1, 0, 0, 0, 0, 1);
Insert Into [DBAzothADM].[ACC].[Field] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField], [SendToReferential]) 
		Values(1, 200, 7, 'Longitude', 'decimal(11, 8)', 1, 0, 0, 0, 0, 1);


/*--------------------------------------------------*/
/*						MaterialScan				*/
/*--------------------------------------------------*/


/*--------------------------------------------------*/
/*						Document					*/
/*--------------------------------------------------*/


/*--------------------------------------------------*/
/*						Contact						*/
/*--------------------------------------------------*/

/*--------------------------------------------------*/
/*						Vendor						*/
/*--------------------------------------------------*/


