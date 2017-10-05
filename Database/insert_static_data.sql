
/*---------------------------------------------------------------*/
/***********		Type de travail						**********/
/*---------------------------------------------------------------*/
Truncate table [REF].[WorkType];
Insert Into [REF].[WorkType] ([WorkCode], [WorkDescription]) Values('RET', 'RETRAIT');
Insert Into [REF].[WorkType] ([WorkCode], [WorkDescription]) Values('RAM', 'RAMASSAGE');
Insert Into [REF].[WorkType] ([WorkCode], [WorkDescription]) Values('ECH', 'ECHANGE');
Insert Into [REF].[WorkType] ([WorkCode], [WorkDescription]) Values('VID', 'VIDAGE');
Insert Into [REF].[WorkType] ([WorkCode], [WorkDescription]) Values('AR', 'ALLER/RETOUR');
Insert Into [REF].[WorkType] ([WorkCode], [WorkDescription]) Values('LIVBS', 'LIVRAISON');
Insert Into [REF].[WorkType] ([WorkCode], [WorkDescription]) Values('OCL', 'OPERATION SUR SITE CLIENT');
Insert Into [REF].[WorkType] ([WorkCode], [WorkDescription]) Values('REC', 'RECEPTION DE MATIERE');
Insert Into [REF].[WorkType] ([WorkCode], [WorkDescription]) Values('CHARG', 'CHARGEMENT');
Insert Into [REF].[WorkType] ([WorkCode], [WorkDescription]) Values('PLA', 'PLACEMENT');
	
	
/*---------------------------------------------------------------*/
/***********		Statut Programme					**********/
/*---------------------------------------------------------------*/
Truncate table [REF].[ProgramHeaderStatus];
Insert Into [REF].[ProgramHeaderStatus] ([StatusId], [Label]) Values('0', 'Non commencé');
Insert Into [REF].[ProgramHeaderStatus] ([StatusId], [Label]) Values('1', 'En cours');
Insert Into [REF].[ProgramHeaderStatus] ([StatusId], [Label]) Values('2', 'Terminé');
Insert Into [REF].[ProgramHeaderStatus] ([StatusId], [Label]) Values('3', 'En pause');
Insert Into [REF].[ProgramHeaderStatus] ([StatusId], [Label]) Values('4', 'Abandonné');

/*---------------------------------------------------------------*/
/***********		Statut Ligne Programme				**********/
/*---------------------------------------------------------------*/
Truncate table [REF].[ProgramLineStatus];
Insert Into [REF].[ProgramLineStatus] ([StatusId], [Label]) Values('0', 'Non commencé');
Insert Into [REF].[ProgramLineStatus] ([StatusId], [Label]) Values('1', 'Aucune étape réalisée');
Insert Into [REF].[ProgramLineStatus] ([StatusId], [Label]) Values('2', 'Travail client effectué');
Insert Into [REF].[ProgramLineStatus] ([StatusId], [Label]) Values('3', 'En pause');
Insert Into [REF].[ProgramLineStatus] ([StatusId], [Label]) Values('4', 'Réception effectuée');
Insert Into [REF].[ProgramLineStatus] ([StatusId], [Label]) Values('5', 'Etape intermédiaire');
Insert Into [REF].[ProgramLineStatus] ([StatusId], [Label]) Values('6', 'Abandonné');

	
	
	
	
	
	
	
	