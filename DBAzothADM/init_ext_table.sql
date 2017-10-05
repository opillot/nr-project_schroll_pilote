Declare @accountid as int = 1;
Declare @groupid as int = 1;

/*------------------------------------------------------------------*/
/*					Affect ext table to account						*/
/*------------------------------------------------------------------*/

Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(@accountid, 50000, 'Deduction', 'EXT', 1, 1, 1, 2, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(@accountid, 50001, 'WasteCenter', 'EXT', 1, 1, 1, 2, 0, 0, 0);
--Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
--		Values(1, 50002, 'Waste', 'EXT', 1, 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 50003, 'Reason', 'EXT', 1, 1, 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 50004, 'WasteCommon', 'EXT', 1, 1, 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 50005, 'WasteCustomer', 'EXT', 1, 0, 1, 2, 0, 4, 0);
Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 50006, 'WasteSite', 'EXT', 1, 1, 1, 2, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Table_Ext] ([AccountId], [TableId], [Name], [Schema], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 50007, 'WeightServerSetup', 'EXT', 1, 1, 1, 1, 0, 0, 0);


/*--------------------------------------------------------------*/
/*							Link Table to Module				*/
/*--------------------------------------------------------------*/
/*			PILOTE (50000)			*/
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50000, 50000); -- Deduction
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50000, 50001); -- WasteCenter
--INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (1, 50000, 50002); -- Waste 
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (1, 50000, 50003); -- Reason
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (1, 50000, 50004); -- WasteCommon
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (1, 50000, 50005); -- WasteCustomer
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (1, 50000, 50006); -- WasteSite
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (1, 50000, 50007); -- WeightServerSetup

/*			RECEPTION (50001)		*/
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50001, 50000); -- Deduction
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50001, 50001); -- WasteCenter
--INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (@accountid, 50001, 50002); -- Waste 
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (1, 50001, 50004); -- WasteCommon
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (1, 50001, 50005); -- WasteCustomer
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (1, 50001, 50006); -- WasteSite
INSERT INTO [ACC].[Module_Table_Ext] ([AccountId], [ModuleId], [TableId]) VALUES (1, 50001, 50007); -- WeightServerSetup

/*------------------------------------------------------------------*/
/*					Set Access to table for groups					*/
/*------------------------------------------------------------------*/
/*		Chauffeur (10)		*/
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- Deduction
		VALUES (@accountid, 50000, 10, 10, 10, 10, 10);
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- WasteCenter
		VALUES (@accountid, 50001, 10, 10, 10, 10, 10);
--INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- Waste
	--	VALUES (@accountid, 50002, 10, 10, 10, 10, 10);
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- Reason
		VALUES (@accountid, 50003, 10, 10, 10, 10, 10);
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- WasteCommon
		VALUES (1, 50004, 10, 10, 10, 10, 10);
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- WasteCustomer
		VALUES (1, 50005, 10, 10, 10, 10, 10);
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- WasteSite
		VALUES (1, 50006, 10, 10, 10, 10, 10);
INSERT INTO [ACC].[Access_Table_Group] ([AccountId], [TableId], [GroupId], [Read], [Write], [Create], [Delete]) -- WeightServerSetup
		VALUES (1, 50007, 10, 10, 10, 10, 10);



