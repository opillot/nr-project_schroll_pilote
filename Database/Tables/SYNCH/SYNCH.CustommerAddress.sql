CREATE VIEW [SYNCH].[CustomerAddress]
AS
SELECT        CompanyCode, CustomerCode, InterventionAddressCode, [Name], [Address], PostCode, City, [Country_Region Code], [PhoneNumber], [OpeningTime]
FROM            SYNCH.ServiceOrderTmp
Where CustomerCode is not null And InterventionAddressCode is not null
