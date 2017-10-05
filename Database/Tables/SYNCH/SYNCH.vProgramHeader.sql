CREATE TABLE [SYNCH].[ProgramHeader]
(
	[ProgramHeaderCode] VARCHAR(20) NOT NULL , 
    [CompanyCode] VARCHAR(30) NOT NULL, 
    [Date] DATE NOT NULL, 
    [UserCode] VARCHAR(20) NOT NULL, 
    [VehicleCode] VARCHAR(20) NOT NULL, 
	[VehicleInternalId] VARCHAR(50) NOT NULL,
	[RegistrationNumber] VARCHAR(30) NOT NULL,
	[TrailerCode] VARCHAR(20) NOT NULL, 
    [TrailerInternalId] VARCHAR(50) NOT NULL, 
    [ResponsibilityCenterCode] VARCHAR(10) NOT NULL, 
    [PlanningType] VARCHAR(20) NOT NULL, 
	[StartTime] DATETIME NOT NULL,
	[EndTime] DATETIME NOT NULL,
	[BreakTime] DATETIME NOT NULL,
	[DistanceTravelled] DECIMAL(38, 20) NOT NULL, 
    CONSTRAINT [PK_ProgramHeader] PRIMARY KEY ([ProgramHeaderCode], [CompanyCode])
)
