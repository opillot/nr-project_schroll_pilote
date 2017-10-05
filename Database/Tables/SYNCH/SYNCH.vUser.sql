CREATE TABLE [SYNCH].[User]
(
	[UserCode] VARCHAR(20) NOT NULL , 
    [CompanyCode] VARCHAR(20) NOT NULL, 
	[Name] VARCHAR(50) NOT NULL, 
	[FirstName] VARCHAR(50) NOT NULL, 
    [ResponsibilityCenterCode] VARCHAR(20) NOT NULL, 
    [Badge] INT NOT NULL, 
    [WasteCenterCode] VARCHAR(20) NOT NULL, 
    CONSTRAINT [PK_Utilisateur] PRIMARY KEY ([UserCode], [CompanyCode]), 
)
