CREATE TABLE [REF].[Geolocalisation_OLD]
(
    [Id] INT NOT NULL IDENTITY(1,1),
	[BkCompany] VARCHAR (20) NOT NULL,
    [BkResponsibilityCenter] VARCHAR (20) NOT NULL,
	[Position] VARCHAR(50) NOT NULL,
	[Metadata] VARCHAR (500) NOT NULL,
	[Identifiant] VARCHAR (20) NOT NULL,
	[Type] VARCHAR (20) NOT NULL  CHECK([Type] IN ('Fixed','Navigation')),

    CONSTRAINT [PK_Geolocalisation_OLD] PRIMARY KEY ([Id]),
	--CONSTRAINT [FK_SystemesPesees.BkCompany_Company] FOREIGN KEY ([BkCompany]) REFERENCES [param].[Company]([BkCompany]),
	--CONSTRAINT [FK_SystemesPesees.BkResponsibilityCenter_ResponsibilityCenter] FOREIGN KEY ([BkCompany],[BkResponsibilityCenter]) REFERENCES [param].[ResponsibilityCenter]([BkCompany],[BkResponsibilityCenter]),
	--CONSTRAINT [FK_SystemesPesees.ServeurPesees-PortServeurPesees_Company] UNIQUE (ServeurPesees,PortServeurPesees)
)