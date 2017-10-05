CREATE TABLE [REF].[UserModule]
(
	[SysRecordId] INT NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1,
	[UserCode] VARCHAR(20) NOT NULL , 
    [CompanyCode] VARCHAR(30) NOT NULL, 
	[Module] VARCHAR(10) NOT NULL, 
    CONSTRAINT [PK_UserModule] PRIMARY KEY ([SysRecordId])
)
