﻿declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)

SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into FamilyStatus(Name, LastUpdDT, LastUpdUs)
select N'одружений', @LastUpdDt, @LastUpdUs

insert into FamilyStatus(Name, LastUpdDT, LastUpdUs)
select N'заміжня', @LastUpdDt, @LastUpdUs

insert into FamilyStatus(Name, LastUpdDT, LastUpdUs)
select N'не одружений', @LastUpdDt, @LastUpdUs

insert into FamilyStatus(Name, LastUpdDT, LastUpdUs)
select N'не заміжня', @LastUpdDt, @LastUpdUs


