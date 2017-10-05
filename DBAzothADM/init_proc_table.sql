Declare @accountid as int = 1;
Declare @groupid as int = 1;

/*------------------------------------------------------------------*/
/*					Affect proc table to account					*/
/*------------------------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], 
						[FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(@accountid, 50010, 'ServiceOrderWork', 'PROC', 1, 0, 2, 0, 0, 6, 0);		

Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], 
						[FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(@accountid, 50011, 'ServiceOrderTask', 'PROC', 1, 0, 2, 0, 0, 4, 0);		

Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], 
						[FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(@accountid, 50012, 'ServiceOrderTaskLine', 'PROC', 1, 0, 2, 0, 0, 4, 0);		

Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], 
						[FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(@accountid, 50013, 'ProcessHeader', 'PROC', 1, 0, 2, 0, 0, 0, 0);	

Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], 
						[FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(@accountid, 50014, 'ProcessStep', 'PROC', 1, 0, 2, 0, 0, 0, 0);	

/*--------------------------------------------------*/
/*					Link Table to Module			*/
/*--------------------------------------------------*/
/*			PILOTE (50000)			*/
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50000, 50010); -- ServiceOrderWork
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50000, 50011); -- ServiceOrderTask
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50000, 50012); -- ServiceOrderTaskLine

/*			RECEPTION (50001)		*/
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50001, 50010); -- ServiceOrderWork
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50001, 50011); -- ServiceOrderTask
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50001, 50012); -- ServiceOrderTaskLine
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50001, 50013); -- ProcessHeader
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50001, 50014); -- ProcessStep

/*------------------------------------------------------------------*/
/*					Set Access to table for groups					*/
/*------------------------------------------------------------------*/
/*			Chauffeur (10)			*/
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- ServiceOrderWork
		VALUES (@accountid, 50010, 10, 10, 10, 10, 10);
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- ServiceOrderTask
		VALUES (@accountid, 50011, 10, 10, 10, 10, 10);
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- ServiceOrderTaskLIne
		VALUES (@accountid, 50012, 10, 10, 10, 10, 10);
/*			Réceptionniste (10)			*/
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- ProcessHeader
		VALUES (@accountid, 50013, 20, 10, 10, 10, 10);
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- ProcessHeader
		VALUES (@accountid, 50014, 20, 10, 10, 10, 10);