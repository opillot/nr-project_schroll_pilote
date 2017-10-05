CREATE TABLE [SYNCH].[Deduction]
(
    [DeductionCode] VARCHAR (10) NOT NULL,
    [CompanyCode] VARCHAR (30) NOT NULL,
	[Deduction] VARCHAR(30) NOT NULL, 
	[DeductionType] VARCHAR(10) NULL, 
	[Weight] DECIMAL(6, 3) NOT NULL, 
	[DisplayOrder] INT NOT NULL, 
	[BoldDisplay] tinyint NOT NULL, 
    CONSTRAINT [PK_Deduction] PRIMARY KEY ([DeductionCode], [CompanyCode])
)