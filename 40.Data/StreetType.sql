declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into StreetType
select N'������', @LastUpdDt, @LastUpdUs
insert into StreetType
select N'�������', @LastUpdDt, @LastUpdUs
insert into StreetType
select N'��������', @LastUpdDt, @LastUpdUs
insert into StreetType
select N'��������', @LastUpdDt, @LastUpdUs
