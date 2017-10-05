CREATE TABLE [AZT].[Document]
(
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[RecordDateTime] [datetime] NOT NULL DEFAULT GetDate(),
	[AztRecordId] [int] NOT NULL,
	[AztStatus] [int] NOT NULL DEFAULT 1,
	[AztUserId] [int] NOT NULL DEFAULT -1,
	[CategoryCode] [varchar](20) NOT NULL,
	[CompanyCode] [varchar](30) NOT NULL,
	[ProgramHeaderCode] [varchar](20) NOT NULL,
	[ProgramLineCode] [int] NOT NULL,
	[WasteCenterCode] VARCHAR(20) NOT NULL,
	[TicketNo] [varchar](30) NOT NULL,
	[DocTypeCode] [varchar] (10) NOT NULL,
	[URL] [varchar](255) NOT NULL,
	[Processed] TINYINT NOT NULL DEFAULT 0,
    CONSTRAINT [PK_Document] PRIMARY KEY ([RecordId])
)
-- [CategoryCode] : * FRANCO
--					* PRG
-- [DocTypeCode] :	* TCKT : photo du ticket de pesée
--					* MAT : photo des matières dans un centre externe
--					* SIGN : photo de la signature client*
--					* DED : photo des matières dans un centre interne si des déductions ont été saisies
--					* NC : photo des matières en cas de présence de matière non convenue avec le client
--					* INC : photo en cas d'incident hors travail