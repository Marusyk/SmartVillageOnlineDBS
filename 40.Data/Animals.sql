﻿declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)

SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into Animals(Name, LastUpdDT, LastUpdUs)
select N'Корова', @LastUpdDt, @LastUpdUs

insert into Animals(Name, LastUpdDT, LastUpdUs)
select N'Свиня', @LastUpdDt, @LastUpdUs

insert into Animals(Name, LastUpdDT, LastUpdUs)
select N'Собака', @LastUpdDt, @LastUpdUs


