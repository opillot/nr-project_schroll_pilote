CREATE TABLE [REF].[TramesDecompositions]
(
	[Id] INT NOT NULL IDENTITY(1, 1) ,
	[ServeurPesees] VARCHAR(50) NOT NULL, 
    [PortServeurPesees] VARCHAR(20) NOT NULL, 
	[Trame] VARCHAR(1000) NOT NULL, 
    [DateHeure] DATETIME NOT NULL,

	CONSTRAINT [PK_TramesDecompositions] PRIMARY KEY ([Id]),
	CONSTRAINT [FK_TramesDecompositions.ServeurPesees-PortServeurPesees] UNIQUE (ServeurPesees,PortServeurPesees)
)
