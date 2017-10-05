CREATE TABLE [SYNCH].[UserModule]
(
	[UserCode] VARCHAR(20) NOT NULL , 
    [CompanyCode] VARCHAR(30) NOT NULL, 
	[Module] VARCHAR(10) NOT NULL, 
    CONSTRAINT [PK_UserModule] PRIMARY KEY ([UserCode], [CompanyCode], [Module])
)
