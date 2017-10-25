/************************************************************/
/*****					Init StepActionType				*****/
/************************************************************/
Truncate Table [ACC].[StepActionType];
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5000, 1, 'WASTE', 'Enter the waste quantity', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5001, 1, 'DED', 'Enter the deduction quantity', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5002, 1, 'PEGASE', 'Send informations to PEGASE', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5003, 1, 'CH-CENTER', 'Choose a waste center', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5004, 1, 'CH-RCPT', 'Choose a receptionnist', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5005, 1, 'SCH-PHOTO', 'Photos of waste', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5006, 1, 'SCH-ENTER-TEXT', 'Enter a text', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5007, 1, 'SCH-SCAN-VAL', 'Scan with validation', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5008, 1, 'SCH-SIGNATURE', 'Signature of ccustomer', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5009, 1, 'SCH-SCAN', 'Scan', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5010, 1, 'SCH-WORK-CANCEL', 'Cancel the work', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5011, 1, 'SCH-WORK-ABORT', 'Abort the work', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5012, 1, 'SCH-SCAN-DOP', 'Scan a DOP', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5013, 1, 'WASTE-EXT', 'Enter the waste quantity', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5014, 1, 'SCH-ENTER-INT', 'Enter an integer', '');
INSERT INTO [ACC].[StepActionType] ([StepActionTypeId], [AccountId], [Code], [Label], [Description])
     VALUES (5015, 1, 'SCH-PHOTO-TCKT', 'Photo of ticket', '');

/************************************************************/
/*****					Init ProcessHeader				*****/
/************************************************************/
INSERT INTO [PROC].[ProcessHeader] ([AccountId], [ProcessHeaderId], [SourceTableId], [FullWorkCode], [DestTableId], [Title]) 
		Values(1, 1, 104, 'ECH_1_0', -1, 'Echange');
INSERT INTO [PROC].[ProcessHeader] ([AccountId], [ProcessHeaderId], [SourceTableId], [FullWorkCode], [DestTableId], [Title]) 
		Values(1, 2, 104, 'PLA', -1, 'Placement');
INSERT INTO [PROC].[ProcessHeader] ([AccountId], [ProcessHeaderId], [SourceTableId], [FullWorkCode], [DestTableId], [Title]) 
		Values(1, 3, 104, 'RET', -1, 'Retrait');
INSERT INTO [PROC].[ProcessHeader] ([AccountId], [ProcessHeaderId], [SourceTableId], [FullWorkCode], [DestTableId], [Title]) 
		Values(1, 4, 104, 'AR', -1, 'Aller retour');

INSERT INTO [PROC].[ProcessHeader] ([AccountId], [ProcessHeaderId], [SourceTableId], [FullWorkCode], [DestTableId], [Title]) 
		Values(1, 5, -1, 'RCPT_FRA', -1, 'Réception FRANCO');
INSERT INTO [PROC].[ProcessHeader] ([AccountId], [ProcessHeaderId], [SourceTableId], [FullWorkCode], [DestTableId], [Title]) 
		Values(1, 6, -1, 'RCPT_CHA', -1, 'Réception CHAUFFEUR');

INSERT INTO [PROC].[ProcessHeader] ([AccountId], [ProcessHeaderId], [SourceTableId], [FullWorkCode], [DestTableId], [Title]) 
		Values(1, 7, 104, 'ECH_1_0_EXT', -1, 'Echange centre externe');

/************************************************************/
/*****					Init ProcessStep				*****/
/************************************************************/
Delete [PROC].[ProcessStep];

/******		ECH_1_0		*****/
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	1, 1, 3, -1, 1, 0, 0, 0, '2', '-1', 'Début de travail', NULL, 9, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	2, 1, 3, -1, 3, 0, 0, 0, '3', '1', 'Début opération (client)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	3, 1, 4, -1, -1, 0, 0, 0, '4', '2', 'Retrait matériel', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	4, 1, 4, -1, -1, 0, 0, 0, '5', '3', 'Placement matériel chez client', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	5, 1, 2, 5007, -1, 1, 1, 0, '6', '4', 'Scan matériel placé', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	6, 1, 2, 5008, -1, 1, 1, 0, '7', '5', 'Signature client', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	7, 1, 3, -1, 4, 0, 0, 0, '8', '6', 'Fin opération (client)', NULL, 10, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	8, 1, 4, -1, -1, 0, 0, 0, '9', '7', 'Déplacement centre de traitement', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	9, 1, 1, 5003, -1, 1, 1, 0, '10|20', '8', 'Choix centre de traitement', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	10, 1, 3, -1, 3, 0, 0, 0, '11', '9', 'Début opération (réception)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	11, 1, 4, -1, -1, 0, 0, 0, '12', '10', 'Passage pont à bascule', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	12, 1, 1, 5004, -1, 1, 1, 0, '13', '11', 'Choix Réceptionniste', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	13, 1, 2, 5009, -1, 1, 1, 0, '14', '12', 'Scan du ticket de pesée', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	14, 1, 2, 5001, -1, 1, 1, 0, '15', '13', 'Saisie des déductions', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	15, 1, 2, 5000, -1, 1, 1, 0, '16', '14', 'Saisie des matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	16, 1, 2, 5002, -1, 1, 1, 0, '17', '15', 'Envoie des données vers PEGASE', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	17, 1, 2, 5005, -1, 1, 1, 0, '18', '16', 'Photo matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	18, 1, 3, -1, 4, 0, 0, 0, '19', '17', 'Fin opération (réception)', NULL, 11, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	19, 1, 3, -1, 2, 0, 0, 0, '-1', '18', 'Fin de travail', NULL, 9, 10);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	20, 1, 3, -1, 3, 0, 0, 0, '21', '9', 'Début opération (réception)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	21, 1, 4, -1, -1, 0, 0, 0, '22', '20', 'Vidage benne', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	22, 1, 2, 5005, -1, 1, 1, 0, '23', '21', 'Photo matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	23, 1, 2, 5006, -1, 1, 1, 0, '24', '22', 'N° du ticket de pesée', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	24, 1, 2, 5015, -1, 1, 1, 0, '25', '23', 'Photo du ticket de pesée', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	25, 1, 2, 5014, -1, 1, 1, 0, '26', '24', 'Poids Net en Kg', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	26, 1, 2, 5013, -1, 1, 1, 0, '27', '25', 'Saisie des matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	27, 1, 3, -1, 4, 0, 0, 0, '28', '26', 'Fin opération (réception)', NULL, 11, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	28, 1, 3, -1, 2, 0, 0, 0, '-1', '27', 'Fin de travail', NULL, 9, 10);




/******		PLA		*****/
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	1, 2, 3, -1, 1, 0, 0, 0, '2', '-1', 'Début de travail', NULL, 9, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	2, 2, 3, -1, 3, 0, 0, 0, '3', '1', 'Début opération (client)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	3, 2, 4, -1, -1, 0, 0, 0, '4', '2', 'Placement matériel chez client', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	4, 2, 2, 5007, -1, 1, 1, 0, '5', '3', 'Scan matériel placé', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	5, 2, 2, 5008, -1, 1, 1, 0, '6', '4', 'Signature client', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	6, 2, 3, -1, 4, 0, 0, 0, '7', '5', 'Fin opération (client)', NULL, 10, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	7, 2, 3, -1, 2, 0, 0, 0, '-1', '6', 'Fin de travail', NULL, 9, 10);


/******		RET		*****/
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	1, 3, 3, -1, 1, 0, 0, 0, '2', '-1', 'Début de travail', NULL, 9, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	2, 3, 3, -1, 3, 0, 0, 0, '3', '1', 'Début opération (client)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	3, 3, 4, -1, -1, 0, 0, 0, '4', '2', 'Retrait matériel', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	4, 3, 2, 5008, -1, 1, 1, 0, '5', '3', 'Signature client', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	5, 3, 3, -1, 4, 0, 0, 0, '6', '4', 'Fin opération (client)', NULL, 10, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	6, 3, 4, -1, -1, 0, 0, 0, '7', '5', 'Déplacement centre de traitement', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	7, 3, 1, 5003, -1, 1, 1, 0, '8|18', '6', 'Choix centre de traitement', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	8, 3, 3, -1, 3, 0, 0, 0, '9', '7', 'Début opération (réception)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	9, 3, 4, -1, -1, 0, 0, 0, '10', '8', 'Passage pont à bascule', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	10, 3, 1, 5004, -1, 1, 1, 0, '11', '9', 'Choix Réceptionniste', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	11, 3, 2, 5009, -1, 1, 1, 0, '12', '10', 'Scan du ticket de pesée', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	12, 3, 2, 5001, -1, 1, 1, 0, '13', '11', 'Saisie des déductions', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	13, 3, 2, 5000, -1, 1, 1, 0, '14', '12', 'Saisie des matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	14, 3, 2, 5002, -1, 1, 1, 0, '15', '13', 'Envoie des données vers PEGASE', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	15, 3, 2, 5005, -1, 1, 1, 0, '16', '14', 'Photo matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	16, 3, 3, -1, 4, 0, 0, 0, '17', '15', 'Fin opération (réception)', NULL, 11, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	17, 3, 3, -1, 2, 0, 0, 0, '-1', '16', 'Fin de travail', NULL, 9, 10);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	18, 3, 3, -1, 3, 0, 0, 0, '19', '7', 'Début opération (réception)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	19, 3, 4, -1, -1, 0, 0, 0, '20', '18', 'Vidage benne', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	20, 3, 2, 5005, -1, 1, 1, 0, '21', '19', 'Photo matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	21, 3, 2, 5006, -1, 1, 1, 0, '22', '20', 'N° du ticket de pesée', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	22, 3, 2, 5015, -1, 1, 1, 0, '23', '21', 'Photo du ticket de pesée', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	23, 3, 2, 5014, -1, 1, 1, 0, '24', '22', 'Poids Net en Kg', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	24, 3, 2, 5013, -1, 1, 1, 0, '25', '23', 'Saisie des matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	25, 3, 3, -1, 4, 0, 0, 0, '26', '24', 'Fin opération (réception)', NULL, 11, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	26, 3, 3, -1, 2, 0, 0, 0, '-1', '25', 'Fin de travail', NULL, 9, 10);



Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	18, 3, 2, 5010, -1, 0, 0, 0, -1, -1, 'Annulation du travail', '', -1, '');
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	19, 3, 2, 5011, -1, 0, 0, 0, -1, -1, 'Abandon du travail', '', -1, '');

/******		AR		*****/
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	1, 4, 3, -1, 1, 0, 0, 0, '2', '-1', 'Début de travail', NULL, 9, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	2, 4, 3, -1, 3, 0, 0, 0, '3', '1', 'Début opération (client)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	3, 4, 4, -1, -1, 0, 0, 0, '4', '2', 'Retrait matériel', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	4, 4, 2, 5008, -1, 1, 1, 0, '5', '3', 'Signature client', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	5, 4, 3, -1, 4, 0, 0, 0, '6', '4', 'Fin opération (client)', NULL, 10, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	6, 4, 4, -1, -1, 0, 0, 0, '7', '5', 'Déplacement centre de traitement', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	7, 4, 1, 5003, -1, 1, 1, 0, '8|20', '6', 'Choix centre de traitement', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	8, 4, 3, -1, 3, 0, 0, 0, '9', '7', 'Début opération (réception)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	9, 4, 4, -1, -1, 0, 0, 0, '10', '8', 'Passage pont à bascule', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	10, 4, 1, 5004, -1, 1, 1, 0, '11', '9', 'Choix Réceptionniste', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	11, 4, 2, 5009, -1, 1, 1, 0, '12', '10', 'Scan du ticket de pesée', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	12, 4, 2, 5001, -1, 1, 1, 0, '13', '11', 'Saisie des déductions', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	13, 4, 2, 5000, -1, 1, 1, 0, '14', '12', 'Saisie des matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	14, 4, 2, 5002, -1, 1, 1, 0, '15', '13', 'Envoie des données vers PEGASE', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	15, 4, 2, 5005, -1, 1, 1, 0, '16', '14', 'Photo matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	16, 4, 3, -1, 4, 0, 0, 0, '17', '15', 'Fin opération (réception)', NULL, 11, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	17, 4, 4, -1, -1, 0, 0, 0, '18', '16', 'Placement matériel chez client', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	18, 4, 2, 5007, -1, 1, 1, 0, '19', '17', 'Scan matériel placé', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	19, 4, 3, -1, 2, 0, 0, 0, '-1', '18', 'Fin de travail', NULL, 9, 10);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	20, 4, 3, -1, 3, 0, 0, 0, '21', '9', 'Début opération (réception)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	21, 4, 4, -1, -1, 0, 0, 0, '22', '20', 'Vidage benne', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	22, 4, 2, 5005, -1, 1, 1, 0, '23', '21', 'Photo matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	23, 4, 2, 5006, -1, 1, 1, 0, '24', '22', 'N° du ticket de pesée', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	24, 4, 2, 5015, -1, 1, 1, 0, '25', '23', 'Photo du ticket de pesée', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	25, 4, 2, 5014, -1, 1, 1, 0, '26', '24', 'Poids Net en Kg', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	26, 4, 2, 5013, -1, 1, 1, 0, '27', '25', 'Saisie des matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	27, 4, 3, -1, 4, 0, 0, 0, '28', '26', 'Fin opération (réception)', NULL, 11, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	28, 4, 4, -1, -1, 0, 0, 0, '29', '27', 'Placement matériel chez client', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	29, 4, 2, 5007, -1, 1, 1, 0, '30', '28', 'Scan matériel placé', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	30, 4, 3, -1, 2, 0, 0, 0, '-1', '29', 'Fin de travail', NULL, 9, 10);



/******		Réception FRANCO		*****/
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	1, 5, 3, -1, 1, 0, 0, 0, '2', '-1', 'Début de travail', NULL, 9, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	2, 5, 3, -1, 3, 0, 0, 0, '3', '1', 'Début opération (client)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	3, 5, 2, 5001, -1, 1, 1, 0, '4', '2', 'Saisie des déductions', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	4, 5, 2, 5000, -1, 1, 1, 0, '5', '3', 'Saisie des matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	5, 5, 2, 5002, -1, 1, 1, 0, '6', '4', 'Envoie des données vers PEGASE', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	6, 5, 2, 5005, -1, 1, 1, 0, '7', '5', 'Photo matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	7, 5, 3, -1, 4, 0, 0, 0, '8', '6', 'Fin opération (réception)', NULL, 11, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	8, 5, 3, -1, 2, 0, 0, 0, '-1', '7', 'Fin de travail', NULL, 9, 10);


/******		Réception CHAUFFEUR		*****/
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	1, 6, 3, -1, 1, 0, 0, 0, '2', '-1', 'Début de travail', NULL, 9, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	2, 6, 3, -1, 3, 0, 0, 0, '3', '1', 'Début opération (client)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	3, 6, 2, 5012, -1, 1, 1, 0, '4', '2', 'Scan du No DOP', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	4, 6, 2, 5001, -1, 1, 1, 0, '5', '3', 'Saisie des déductions', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	5, 6, 2, 5000, -1, 1, 1, 0, '6', '4', 'Saisie des matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	6, 6, 2, 5002, -1, 1, 1, 0, '7', '5', 'Envoie des données vers PEGASE', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	7, 6, 2, 5005, -1, 1, 1, 0, '8', '6', 'Photo matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	8, 6, 3, -1, 4, 0, 0, 0, '9', '7', 'Fin opération (réception)', NULL, 11, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	9, 6, 3, -1, 2, 0, 0, 0, '-1', '8', 'Fin de travail', NULL, 9, 10);

/******		Echange centre externe		*****/
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	1, 7, 3, -1, 1, 0, 0, 0, '2', '-1', 'Début de travail', NULL, 9, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	2, 7, 3, -1, 3, 0, 0, 0, '3', '1', 'Début opération (client)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	3, 7, 4, -1, -1, 0, 0, 0, '4', '2', 'Retrait matériel', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	4, 7, 4, -1, -1, 0, 0, 0, '5', '3', 'Placement matériel chez client', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	5, 7, 2, 5007, -1, 1, 1, 0, '6', '4', 'Scan matériel placé', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	6, 7, 2, 5008, -1, 1, 1, 0, '7', '5', 'Signature client', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	7, 7, 3, -1, 4, 0, 0, 0, '8', '6', 'Fin opération (client)', NULL, 10, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	8, 7, 4, -1, -1, 0, 0, 0, '9', '7', 'Déplacement centre de traitement', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	9, 7, 1, 5003, -1, 1, 1, 0, '10', '8', 'Choix centre de traitement', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	10, 7, 3, -1, 3, 0, 0, 0, '11', '9', 'Début opération (réception)', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	11, 7, 4, -1, -1, 0, 0, 0, '12', '10', 'Vidage benne', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	12, 7, 2, 5005, -1, 1, 1, 0, '13', '11', 'Photo matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	13, 7, 2, 5006, -1, 1, 1, 0, '14', '12', 'N° du ticket de pesée', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	14, 7, 2, 5015, -1, 1, 1, 0, '15', '13', 'Photo du ticket de pesée', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	15, 7, 2, 5014, -1, 1, 1, 0, '16', '14', 'Poids Net en Kg', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	16, 7, 2, 5013, -1, 1, 1, 0, '17', '15', 'Saisie des matières', NULL, NULL, NULL);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	17, 7, 3, -1, 4, 0, 0, 0, '18', '16', 'Fin opération (réception)', NULL, 11, 1);
Insert Into [PROC].[ProcessStep] ([ProcessStepId], [ProcessHeaderId], [StepTypeId], [StepActionTypeId], [StepProcessTypeId], [Visible], [Mandatory], [Fixed], [NextStepId], [PreviousStepId], [Title], [Description], [StepProcessFieldId], [StepProcessValue]) Values(
	18, 7, 3, -1, 2, 0, 0, 0, '-1', '17', 'Fin de travail', NULL, 9, 10);
