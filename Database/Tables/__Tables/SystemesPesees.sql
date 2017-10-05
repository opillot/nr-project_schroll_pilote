CREATE TABLE [REF].[SystemesPesees]
(
    [BkCompany] VARCHAR (20) NOT NULL,
    [BkResponsibilityCenter] VARCHAR (20) NOT NULL,
	[ServeurPesees] VARCHAR(50) NOT NULL,
	[PortServeurPesees] VARCHAR (20) NOT NULL
)
--Penser à vérifier que le couple BK est présent dans la table Responsibility Center