IF EXISTS (SELECT * FROM dbo.sysObjects WHERE ID = object_id(N'[dbo].[AddressView]') AND OBJECTPROPERTY(ID, N'IsView') = 1)
DROP VIEW [dbo].[AddressView]
GO
/* (c) COPYRIGHT SMARTVILLAGE SOLUTIONS
#View=AddressView
#DateCreate=14.07.2015
#DateLastEdit=14.07.2014
#LastEditBy=rmarusyk
#Version=01
#History=
01 14.07.2015 RM Created.
#Description=
*/
CREATE VIEW AddressView
AS
select ADR.ID AddressID
,      COU.Name Country
,      REG.Name Region
,      DST.Name District
,      CTT.Name CityType
,      CTY.Name City
,      STT.Name StreetType
,      STR.Name Street
,      ADR.BuildNr
,      ADR.FlatNr
,      ADR.PostCode
from   Address ADR
       inner join City CTY on ADR.CityID = CTY.ID
       inner join CityType CTT on CTY.CityTypeID = CTT.ID
       inner join Street STR on ADR.StreetID = STR.ID
       inner join StreetType STT on STR.StreetTypeID = STT.ID
       left  join District DST on CTY.DistrictID = DST.ID
       inner join Region REG on REG.ID = ISNULL(DST.RegionID, CTY.RegionID)
       inner join Country COU on REG.CountryID = COU.ID