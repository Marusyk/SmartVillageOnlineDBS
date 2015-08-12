declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)

SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into Materials(Name, LastUpdDT, LastUpdUs)
select N'дерево', @LastUpdDt, @LastUpdUs

insert into Materials(Name, LastUpdDT, LastUpdUs)
select N'цемент', @LastUpdDt, @LastUpdUs

insert into Materials(Name, LastUpdDT, LastUpdUs)
select N'цегла', @LastUpdDt, @LastUpdUs

