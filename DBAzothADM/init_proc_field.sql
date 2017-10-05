Declare @accountid as int = 1;
Declare @groupid as int = 1;

/*--------------------------------------------------*/
/*						ServiceOrderWork			*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField])
		Values(@accountid, 50010, 1, 'ServiceOrderWorkId', 'int', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50010, 4, 'SourceProcessId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50010, 5, 'SourceTableId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50010, 6, 'SourceRecordId', 'int', 1, 0, 1, 104, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50010, 7, 'Title', 'varchar(50)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50010, 8, 'StartTaskId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50010, 9, 'Status', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50010, 10, 'OperationCustomer', 'tinyint', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50010, 11, 'OperationRcpt', 'tinyint', 1, 0, 1, 0, 0);

/*--------------------------------------------------*/
/*						ServiceOrderTask			*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 1, 'ServiceOrderTaskId', 'int', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 4, 'ServiceOrderWorkId', 'int', 1, 0, 1, 50010, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 5, 'ProcessStepId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 6, 'TaskTypeId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 7, 'TaskActionTypeId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 8, 'TaskProcessTypeId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 9, 'Visible', 'tinyint', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 10, 'Mandatory', 'tinyint', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 11, 'Fixed', 'tinyint', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 12, 'NextTaskId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 13, 'PreviousTaskId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 14, 'Title', 'varchar(50)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 15, 'Processed', 'tinyint', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 16, 'TaskProcessFieldId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50011, 17, 'TaskProcessValue', 'varchar(50)', 1, 0, 1, 0, 0);

/*--------------------------------------------------*/
/*				ServiceOrderTaskLine				*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50012, 1, 'ServiceOrderTaskLineId', 'int', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50012, 4, 'ServiceOrderTaskId', 'int', 1, 0, 1, 50011, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50012, 5, 'Data1', 'VARCHAR(255)', 1, 0, 1, 50011, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50012, 6, 'Data2', 'VARCHAR(255)', 1, 0, 1, 50011, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50012, 7, 'Data3', 'VARCHAR(255)', 1, 0, 1, 50011, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50012, 8, 'Data4', 'VARCHAR(255)', 1, 0, 1, 50011, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50012, 9, 'Data5', 'VARCHAR(255)', 1, 0, 1, 50011, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(@accountid, 50012, 10, 'DataFull', 'VARCHAR(255)', 1, 0, 1, 50011, 1);

/*--------------------------------------------------*/
/*						ProcessHeader			*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField])
		Values(1, 50013, 1, 'ProcessHeaderId', 'int', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50013, 2, 'SourceTableId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50013, 3, 'FullWorkCode', 'varchar(100)', 1, 0, 1, 104, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50013, 4, 'DestTableId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50013, 5, 'Title', 'varchar(50)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50013, 6, 'Description', 'varchar(255)', 1, 0, 1, 0, 0);

/*--------------------------------------------------*/
/*						ProcessStep			*/
/*--------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 1, 'ProcessStepId', 'int', 1, 1, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 2, 'ProcessHeaderId', 'int', 1, 0, 1, 50010, 1);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 3, 'StepTypeId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 4, 'StepActionTypeId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 5, 'StepProcessTypeId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 6, 'Visible', 'tinyint', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 7, 'Mandatory', 'tinyint', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 8, 'Fixed', 'tinyint', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 9, 'NextStepId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 10, 'PreviousStepId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 11, 'Title', 'varchar(50)', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 12, 'StepProcessFieldId', 'int', 1, 0, 1, 0, 0);
Insert Into [DBAzothADM].[ACC].[Field_Ext] ([AccountId], [TableId], [FieldId], [Name], [Type], [Mandatory], [PrimaryKey], [Publish], [LinkedTable], [LinkedField]) 
		Values(1, 50014, 13, 'StepProcessValue', 'varchar(50)', 1, 0, 1, 0, 0);

