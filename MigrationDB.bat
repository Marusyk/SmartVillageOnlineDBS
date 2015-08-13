@echo off
cls

set server=MARUSYK\SQLEXPRESS
set database=SVData 
set username=sa
set password=sa#001
set runsqlcmd=sqlcmd -S %server% -U %username% -P %password% -d %database% -i

rem FOR DEPLOY ENV.
rem set server=b32c2b3e-50c3-4d45-a886-a4ba00dfb377.sqlserver.sequelizer.com
rem set database=dbb32c2b3e50c34d45a886a4ba00dfb377
rem set username=enpdmnvsyzlaergr
rem set password=RPeGijUHyGgb2sG2vHMaRarFqnKFhwzzcBMWvcraTbR6zWYNwGNJdn8RwFq5Fozc

rem set /P PARAM_VALUE=Remove all objects from the database (Y/N)?  
cd 10.PreScripts

choice /C:YN /M:"Do you wish to remove all objects from the database [Y] or only cleanup all data [N]?"
IF ERRORLEVEL ==2 GOTO CleanUpData
IF ERRORLEVEL ==1 GOTO CleanUpObjects
goto scripts

rem if /I "%PARAM_VALUE%"=="y" goto CleanUpObjects
rem if /I "%PARAM_VALUE%"=="n" goto CleanUpData

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
call ImportData.bat "%runsqlcmd%"

pause