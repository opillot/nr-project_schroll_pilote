CREATE TABLE [REF].[ProgramHeaderComment]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1,
	[CompanyCode] varchar(30) NOT NULL ,
	[ProgramHeaderCode] varchar(20) NOT NULL,
	[CommentLine] INT NOT NULL,
	[Comment] varchar(80) NOT NULL, 
    CONSTRAINT [PK_ProgramHeaderComment] PRIMARY KEY ([SysRecordId]) 
)
