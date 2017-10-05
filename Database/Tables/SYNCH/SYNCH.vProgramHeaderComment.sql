CREATE TABLE [SYNCH].[ProgramHeaderComment]
(
	[CompanyCode] varchar(30) NOT NULL ,
	[ProgramHeaderCode] varchar(20) NOT NULL,
	[CommentLine] INT NOT NULL,
	[Comment] varchar(80) NOT NULL, 
    CONSTRAINT [PK_ProgramHeaderComment] PRIMARY KEY ([CompanyCode], [ProgramHeaderCode], [CommentLine]) 
)
