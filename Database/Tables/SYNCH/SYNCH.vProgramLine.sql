CREATE TABLE [SYNCH].[ProgramLine]
(
	[ProgramHeaderCode] VARCHAR(20) NOT NULL , 
    [CompanyCode] VARCHAR(30) NOT NULL, 
	[ProgramLineCode] INT NOT NULL, 
	[SortingNumber] INT NOT NULL, 
	[DopNumber] VARCHAR(20) NOT NULL, 
	[ServiceOrder] VARCHAR(10) NOT NULL, 
	[StartTime] TIME NOT NULL, 
	[EndTime] TIME NOT NULL, 
	[HandlerCount] INT NOT NULL, 
	[HandlingTime] TIME NOT NULL, 
	[Status] INT NOT NULL, 
	[StatusDescription] VARCHAR(50) NOT NULL, 
	[ReasonCode] INT NOT NULL, 
	[DetailedReason] VARCHAR(200) NOT NULL, 
	[AbortedWork] TINYINT NOT NULL, 
    CONSTRAINT [PK_ProgramLine] PRIMARY KEY ([ProgramHeaderCode], [CompanyCode], [ProgramLineCode]), 
)
