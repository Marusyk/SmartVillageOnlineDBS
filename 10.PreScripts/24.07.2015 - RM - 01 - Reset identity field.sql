/*
 24.07.2015 - RM - 01 - Reset identity field
 Author:  Roman Marusyk
 Date:
   24.07.2015   First version

 Description:

*/

declare @TableName varchar(100)

declare cur_Cursor CURSOR STATIC
FOR 

  select TABLE_NAME from information_schema.tables

OPEN  cur_Cursor
FETCH NEXT FROM cur_Cursor into @TableName
WHILE @@FETCH_STATUS = 0
BEGIN

  IF LEFT(@TableName, 1) != '_'  -- except __MigrationHistory
    DBCC CHECKIDENT(@TableName, RESEED, 0)

  FETCH NEXT FROM cur_Cursor into @TableName

END
CLOSE cur_Cursor
DEALLOCATE cur_Cursor
