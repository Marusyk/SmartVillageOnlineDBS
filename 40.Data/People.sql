declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)

SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into People
(  PersonID
  , HouseID
  , PeopleNumber
  , FamilyRelationID
  , DateRegistration
  , IsMain
  , LastUpdDT
  , LastUpdUS
 )
 select 1 -- PersonID
 ,          1  --HouseID
 ,          77511
 ,          2 -- FamilyRelationID
 ,          CONVERT(date, '14.02.2000', 104)
 ,          1 
 ,          @LastUpdDt
 ,          @LastUpdUs