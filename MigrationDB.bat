rem @echo off
cls

SET server=MARUSYK\SQLEXPRESS
SET database=SVData 
SET username=sa
SET password=sa#001
SET runsqlcmd=sqlcmd -S %server% -U %username% -P %password% -d %database% -i

rem FOR DEPLOY ENV.
rem SET server=b32c2b3e-50c3-4d45-a886-a4ba00dfb377.sqlserver.sequelizer.com
rem SET database=dbb32c2b3e50c34d45a886a4ba00dfb377
rem SET username=enpdmnvsyzlaergr
rem SET password=RPeGijUHyGgb2sG2vHMaRarFqnKFhwzzcBMWvcraTbR6zWYNwGNJdn8RwFq5Fozc

set /P PARAM_VALUE=Remove all objects from the database (Y/N)?  

cd 10.PreScripts

if /I "%PARAM_VALUE%"=="y" goto CleanUpObjects
if /I "%PARAM_VALUE%"=="n" goto CleanUpData
goto scripts

:CleanUpObjects
%runsqlcmd% "31.07.2015 - RM - CleanUpObjects.sql"
goto scripts
:CleanUpData
%runsqlcmd% "30.07.2015 - RM - CleanUpData.sql"
goto scripts

:scripts
cd ../15.Tables
for %%G in (*.sql) do %runsqlcmd% "%%G"

cd ../20.Indexes
for %%G in (*.sql) do %runsqlcmd% "%%G"

cd ../35.ForeignConstraints
for %%G in (*.sql) do %runsqlcmd% "%%G"

cd ../45.Views
for %%G in (*.sql) do %runsqlcmd% "%%G"

cd ../40.Data
rem In order dependencies
%runsqlcmd% "SYS_Dictionary.sql"
%runsqlcmd% "Animals.sql"
%runsqlcmd% "Catalog.sql"
%runsqlcmd% "DocumentType.sql"
%runsqlcmd% "FamilyRelations.sql"
%runsqlcmd% "FamilyStatus.sql"
%runsqlcmd% "Materials.sql"
%runsqlcmd% "Nationality.sql"
%runsqlcmd% "Country.sql"
%runsqlcmd% "Region.sql"
%runsqlcmd% "District.sql"
%runsqlcmd% "CityType.sql"
%runsqlcmd% "StreetType.sql"
%runsqlcmd% "City.sql"
%runsqlcmd% "Street.sql"
%runsqlcmd% "Address.sql"
%runsqlcmd% "House.sql"
%runsqlcmd% "Person.sql"

cd..
pause