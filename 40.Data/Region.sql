declare @LastUpdDt smalldatetime, @LastUpdUs varchar(50)
declare @CountryID int

SET @LastUpdDt = GETDATE()
SET @LastUpdUs = N'SV'

select @CountryID = ID 
from   Country
where Name = N'Україна'

IF NOT EXISTS(select 1 from Region where Name = N'Вінницька')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Вінницька'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Волинська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Волинська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Дніпропетровська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Дніпропетровська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Донецька')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Донецька'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Житомирська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Житомирська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Закарпатська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Закарпатська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Запорізька')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Запорізька'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Івано-Франківська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Івано-Франківська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Київська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Київська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Кіровоградська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Кіровоградська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Луганська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Луганська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Львівська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Львівська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Миколаївська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Миколаївська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Одеська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Одеська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Полтавська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Полтавська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Рівненська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Рівненська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Сумська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Сумська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Тернопільська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Тернопільська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Харківська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Харківська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Херсонська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Херсонська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Хмельницька')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Хмельницька'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Черкаська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Черкаська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Чернівецька')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Чернівецька'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END

IF NOT EXISTS(select 1 from Region where Name = N'Чернігівська')
BEGIN
  insert into Region(Name, CountryID, LastUpdDT, LastUpdUS)
  select N'Чернігівська'
  ,         @CountryID
  ,         @LastUpdDt
  ,         @LastUpdUs
END
