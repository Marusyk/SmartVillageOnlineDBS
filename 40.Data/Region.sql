declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = 'SV'

insert into Region
select 'Чернівецька', 1, @LastUpdDt, @LastUpdUs
insert into Region
select 'Івано-Франківська', 1, @LastUpdDt, @LastUpdUs
insert into Region
select 'Київська', 1, @LastUpdDt, @LastUpdUs
insert into Region
select 'Львівська', 1, @LastUpdDt, @LastUpdUs