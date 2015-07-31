/*
 30.07.2015 - RM - 01 - CleanUpData
 Author:  Roman Marusyk
 Date:
   30.07.2015   First version

 Description:
Script to clean up all data
*/

declare @TableName varchar(100), @delete varchar(100)

declare cur_Cursor CURSOR STATIC
FOR 

  select  TABLE_NAME 
  from    information_schema.tables
  where   TABLE_TYPE = 'BASE TABLE'

OPEN  cur_Cursor
FETCH NEXT FROM cur_Cursor into @TableName
WHILE @@FETCH_STATUS = 0
BEGIN

  IF LEFT(@TableName, 1) != '_'  -- except __MigrationHistory
  BEGIN
    SET @delete = 'DELETE FROM ' + @TableName
      EXEC sp_executesql @delete
  END
  
  SET @delete = ''
  FETCH NEXT FROM cur_Cursor into @TableName

END
CLOSE cur_Cursor
DEALLOCATE cur_Cursor
