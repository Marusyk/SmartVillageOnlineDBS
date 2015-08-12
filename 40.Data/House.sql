declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
declare @AddressID int

SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

select @AddressID = ID
from   Address
where BuildNr = N'51'

insert into House 
( HouseNr
,  KadastrNr
,  BuildNr
,  AddressID
,  PhoneNr
,  PhoneCode
,  FaxNr
,  Year
,  Code
,  LastUpdDT
,  LastUpdUS
)
select N'1'
,          N'3221655100:01:047:0052'
,          N'51'
,          @AddressID
,          N'4-94-74'
,          N'03476'
,          NULL
,          2015
,          N'001'
,          @LastUpdDt
,          @LastUpdUs


select @AddressID = ID
from   Address
where BuildNr = N'15'

insert into House 
( HouseNr
,  KadastrNr
,  BuildNr
,  AddressID
,  PhoneNr
,  PhoneCode
,  FaxNr
,  Year
,  Code
,  LastUpdDT
,  LastUpdUS
)
select N'2'
,          N'3221655100:01:047:0000'
,          N'15'
,          @AddressID
,          NULL
,          N'0522'
,          NULL
,          2014
,          N'002'
,          @LastUpdDt
,          @LastUpdUs