declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into StreetType
select '������', @LastUpdDt, @LastUpdUs
insert into StreetType
select '�������', @LastUpdDt, @LastUpdUs
insert into StreetType
select '��������', @LastUpdDt, @LastUpdUs
insert into StreetType
select '��������', @LastUpdDt, @LastUpdUs
