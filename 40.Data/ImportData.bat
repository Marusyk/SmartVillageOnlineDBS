@echo off
set PARAM_CONNECTONS=%1

if [%PARAM_CONNECTONS%] NEQ [] goto Run

set server=MARUSYK\SQLEXPRESS
set database=SVData 
set username=sa
set password=sa#001
set PARAM_CONNECTONS=sqlcmd -S %server% -U %username% -P %password% -d %database% -i

:Run
set PARAM_CONNECTONS=%PARAM_CONNECTONS:"=%

%PARAM_CONNECTONS% "SYS_Dictionary.sql"
%PARAM_CONNECTONS% "Animals.sql"
%PARAM_CONNECTONS% "Catalog.sql"
%PARAM_CONNECTONS% "DocumentType.sql"
%PARAM_CONNECTONS% "FamilyRelations.sql"
%PARAM_CONNECTONS% "FamilyStatus.sql"
%PARAM_CONNECTONS% "Materials.sql"
%PARAM_CONNECTONS% "Nationality.sql"
%PARAM_CONNECTONS% "Country.sql"
%PARAM_CONNECTONS% "Region.sql"
%PARAM_CONNECTONS% "District.sql"
%PARAM_CONNECTONS% "CityType.sql"
%PARAM_CONNECTONS% "StreetType.sql"
%PARAM_CONNECTONS% "City.sql"
%PARAM_CONNECTONS% "Street.sql"
%PARAM_CONNECTONS% "Address.sql"
%PARAM_CONNECTONS% "House.sql"
%PARAM_CONNECTONS% "Person.sql"

:End
cd ..

