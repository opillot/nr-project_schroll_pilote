/*--------------------------------------------------*/
/*					Add Channel Ext					*/
/*--------------------------------------------------*/
INSERT INTO [ADM].[Channel] ([ChannelId], [HubId], [Code], [Description], [Server_Subscribe], [Server_Publish])
     VALUES (50000, 1, 'CH_SCH_TRANS_S', 'Channel du module transport SCHROLL', 1, 0);
INSERT INTO [ADM].[Channel] ([ChannelId], [HubId], [Code], [Description], [Server_Subscribe], [Server_Publish])
     VALUES (50001, 1, 'CH_SCH_TRAN', 'Channel du module Pilote SCHROLL', 0, 1);
INSERT INTO [ADM].[Channel] ([ChannelId], [HubId], [Code], [Description], [Server_Subscribe], [Server_Publish])
     VALUES (50002, 1, 'CH_SCH_RECP_S', 'Channel du module réception SCHROLL', 1, 0);
INSERT INTO [ADM].[Channel] ([ChannelId], [HubId], [Code], [Description], [Server_Subscribe], [Server_Publish])
     VALUES (50003, 1, 'CH_SCH_RECP', 'Channel du module réception SCHROLL', 0, 1);
	
/*--------------------------------------------------*/
/*					Add Module Ext					*/
/*--------------------------------------------------*/
INSERT INTO [ADM].[Module] ([ModuleId], [Name], [Code], [Description])
     VALUES (50000, 'SCHROLL Pilote', 'SCHTRANS',  'Module Pilote SCHROLL');
INSERT INTO [ADM].[Module] ([ModuleId], [Name], [Code], [Description])
     VALUES (50001, 'SCHROLL Réception', 'SCHRECPT',  'Module de réception SCHROLL');

/*--------------------------------------------------*/
/*				Link channel to Module Ext			*/
/*--------------------------------------------------*/
/*			PILOTE (50000)			*/
Insert Into [ADM].[Module_Channel] (ModuleId, ChannelId) Values(50000, 50001); -- CH_SCH_TRAN
Insert Into [ADM].[Module_Channel] (ModuleId, ChannelId) Values(50000, 50000); -- CH_SCH_TRANS_S
/*			RECEPTION (50001)		*/
Insert Into [ADM].[Module_Channel] (ModuleId, ChannelId) Values(50001, 50003); -- CH_SCH_RECP
Insert Into [ADM].[Module_Channel] (ModuleId, ChannelId) Values(50001, 50002); -- CH_SCH_RECP_S

/*------------------------------------------------------------------*/
/*					Affect Module to account						*/
/*------------------------------------------------------------------*/

Insert Into [ACC].[Module] ([AccountId], [ModuleId], [Actif]) Values(1, 50000, 1);
Insert Into [ACC].[Module] ([AccountId], [ModuleId], [Actif]) Values(1, 50001, 1);
Insert Into [ACC].[Module] ([AccountId], [ModuleId], [Actif]) Values(1, 7, 1);

/*------------------------------------------------------------------*/
/*					Create group for account						*/
/*------------------------------------------------------------------*/

Insert Into [ACC].[Group] ([AccountId], [GroupId], [Label]) Values(1, 10, 'Chauffeur');
Insert Into [ACC].[Group] ([AccountId], [GroupId], [Label]) Values(1, 20, 'Réceptionniste');


/*------------------------------------------------------------------*/
/*					Set Access to module for groups					*/
/*------------------------------------------------------------------*/

Delete [ACC].[Module_Group] Where [AccountId] = 1;

Insert Into [ACC].[Module_Group] ([AccountId], [ModuleId], [GroupId]) Values(1, 50000, 10);
Insert Into [ACC].[Module_Group] ([AccountId], [ModuleId], [GroupId]) Values(1, 50001, 20);
Insert Into [ACC].[Module_Group] ([AccountId], [ModuleId], [GroupId]) Values(1, 7, 1);








