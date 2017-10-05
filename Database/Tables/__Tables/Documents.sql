CREATE TABLE [REF].[Documents]
(
	[Code] INT NOT NULL PRIMARY KEY, 
    [Societe] VARCHAR(20) NULL, 
    [Type] VARCHAR(10) NOT NULL, 
    [NoDOP] VARCHAR(20) NULL, 
    [URN] VARCHAR(255) NULL,
	[SignataireNom] VARCHAR(50) NULL,
	[SignatairePrenom] VARCHAR(50) NULL,
	[Titre] VARCHAR(50) NULL,
)
