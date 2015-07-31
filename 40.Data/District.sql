declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
select N'Снятинський', 2, @LastUpdDt, @LastUpdUs
insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
select N'Косівський', 2, @LastUpdDt, @LastUpdUs
insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
select N'Кіцманський', 1, @LastUpdDt, @LastUpdUs
insert into District(Name, RegionID, LastUpdDT, LastUpdUS)
select N'Вижницький', 1, @LastUpdDt, @LastUpdUs