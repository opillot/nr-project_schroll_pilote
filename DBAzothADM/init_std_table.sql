/*------------------------------------------------------------------*/
/*					Affect std table to account						*/
/*------------------------------------------------------------------*/
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 1, 'Company', 1, 1, 0, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 2, 'ResponsibilityCenter', 1, 1, 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 3, 'User', 0, 1, 0, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 6, 'CustomerAddress', 1, 0, 1, 3, 0, 2, 0);
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField], [SendToReferential]) 
		Values(1, 100, 'ProgramHeader', 0, 0, 2, 3, 5, 0, 9, 1);
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 112, 'ProgramHeaderComment', 0, 0, 1, 3, 0, 4, 0);
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 103, 'ProgramLine', 0, 0, 2, 3, 0, 4, 0);
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 104, 'ServiceOrder', 0, 0, 1, 3, 0, 2, 0);
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 111, 'ServiceOrderComment', 0, 0, 1, 3, 0, 4, 0);
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 109, 'Material', 1, 1, 1, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 200, 'GeoLocalisation', 0, 0, 2, 0, 0, 0, 0);
Insert Into [DBAzothADM].[ACC].[Table] ([AccountId], [TableId], [Name], [FullSynchro], [ReferenceTable], [PublishType], [FilterCompanyField], [FilterUserField], [FilterTableField], [FilterDateField]) 
		Values(1, 106, 'ServiceOrderLine', 0, 0, 2, 3, 0, 4, 0);

/*--------------------------------------------------*/
/*						Contact						*/
/*--------------------------------------------------*/

/*--------------------------------------------------*/
/*						Vendor						*/
/*--------------------------------------------------*/


/*--------------------------------------------------------------*/
/*							Link Table to Module				*/
/*--------------------------------------------------------------*/
/*			PILOTE (50000)			*/
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 1); -- Company
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 2); -- BusinessUnit
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 3); -- User
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 6); -- Item
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 8); -- Item
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 100); -- Planning
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 101); -- PlanningType
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 102); -- PlanningStatus
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 103); -- PlanningLine
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 104); -- ServiceOrder
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 105); -- WorkType
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 106); -- ServiceOrderLine
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 107); -- WorkItem
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 108); -- MaterialType
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 109); -- Material
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 110); -- PlanningLineCommentar
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 111); -- ServiceOrderCommentar
Insert Into [ADM].[Module_Table] (ModuleId, TableId) Values(50000, 112); -- PlanningCommentar

/*------------------------------------------------------------------*/
/*					Set Access to std table for groups				*/
/*------------------------------------------------------------------*/
/*		Chauffeur (10)		*/
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 200, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 1, 10, 10, 10, 10); 
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 2, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 3, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 6, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 8, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 100, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 101, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 102, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 103, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 104, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 105, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 106, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 107, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 108, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 109, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 110, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 111, 10, 10, 10, 10);
Insert Into [ACC].[Access_Table_Group] ([AccountId], [GroupId], [TableId], [Read], [Write], [Create], [Delete]) Values(1, 10, 112, 10, 10, 10, 10);


