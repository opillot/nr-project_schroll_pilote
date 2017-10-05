CREATE TABLE [PROC].[ServiceOrderTask]
(
	[SysRecordId] [int] NOT NULL IDENTITY,
	[SysStatus] [int] NOT NULL DEFAULT 1,
	[SysUserId] [int]  NOT NULL DEFAULT -1,
    [ServiceOrderWorkId] INT NOT NULL, 
	[ProcessStepId] INT NOT NULL, 
	[TaskTypeId] INT NOT NULL, 
	[TaskActionTypeId] INT NULL DEFAULT -1, 
	[TaskProcessTypeId] INT NULL DEFAULT -1, 
	[TaskProcessFieldId] INT NULL DEFAULT -1, 
    [TaskProcessValue] VARCHAR(50) NULL, 
	[Visible] TINYINT NULL, 
	[Mandatory] TINYINT NULL,
	[Fixed] TINYINT NULL,
	[NextTaskId] INT NOT NULL, 
	[PreviousTaskId] INT NOT NULL, 
    [Title] VARCHAR(50) NOT NULL, 
    [Processed] TINYINT NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_ServiceOrderTask] PRIMARY KEY ([SysRecordId]) 
)
