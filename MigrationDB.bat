rem @echo off
cls

SET server=MARUSYK\SQLEXPRESS
SET database=SVData 
SET username=sa
SET password=sa#001

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
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "31.07.2015 - RM - CleanUpObjects.sql"
goto scripts
:CleanUpData
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "30.07.2015 - RM - CleanUpData.sql"
goto scripts

:scripts
cd ../15.Tables
for %%G in (*.sql) do sqlcmd -S %server% -U %username% -P %password% -d %database% -i "%%G"

cd ../20.Indexes
for %%G in (*.sql) do sqlcmd -S %server% -U %username% -P %password% -d %database% -i "%%G"

cd ../35.ForeignConstraints
for %%G in (*.sql) do sqlcmd -S %server% -U %username% -P %password% -d %database% -i "%%G"

cd ../45.Views
for %%G in (*.sql) do sqlcmd -S %server% -U %username% -P %password% -d %database% -i "%%G"

cd ../40.Data
rem In order dependencies
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "SYS_Dictionary.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "Animals.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "Catalog.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "DocumentType.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "FamilyRelations.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "FamilyStatus.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "Materials.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "Nationality.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "Country.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "Region.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "District.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "CityType.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "StreetType.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "City.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "Street.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "Address.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "House.sql"
sqlcmd -S %server% -U %username% -P %password% -d %database% -i "Person.sql"

cd..
pause