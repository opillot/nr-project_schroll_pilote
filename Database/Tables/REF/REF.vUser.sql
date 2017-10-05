CREATE TABLE [REF].[User]
(
	[SysRecordId] INT NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1,
	[UserCode] VARCHAR(20) NOT NULL , 
    [CompanyCode] VARCHAR(20) NOT NULL, 
	[Name] VARCHAR(50) NOT NULL, 
	[FirstName] VARCHAR(50) NOT NULL, 
    [ResponsibilityCenterCode] VARCHAR(20) NOT NULL, 
    [Badge] INT NOT NULL, 
    [WasteCenterCode] VARCHAR(20) NOT NULL, 
    [Activ] TINYINT NOT NULL DEFAULT 1, 
	CONSTRAINT [PK_Utilisateur] PRIMARY KEY ([SysRecordId])
)
