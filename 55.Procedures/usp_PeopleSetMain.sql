IF EXISTS (SELECT * FROM dbo.sysObjects WHERE ID = object_id(N'[usp_PeopleSetMain]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
DROP PROCEDURE [usp_PeopleSetMain]
GO
/* (c) COPYRIGHT SMARTVILLAGE SOLUTIONS
#Procedure=usp_PeopleSetMain
#DateCreate=09.09.2015
#DateLastEdit=09.09.2014
#LastEditBy=rmarusyk
#Version=01
#History=
01 09.09.2015 RM Created [#16].
#Description=
*/
CREATE PROCEDURE [usp_PeopleSetMain]
  @PeopleID int
, @LastUpdUs   varchar(50) = 'SV'
AS
BEGIN
  declare @HouseID int
  
  select @HouseID = HouseID
  from   People
  where ID = @PeopleID
  
  update PEO
  set       IsMain = 0
  from    People PEO
  where  HouseID = @HouseID
      and  IsMain = 1
  
  update PEO
  set       IsMain = 1
  ,           FamilyRelationID = NULL
  ,           LastUpdUs = @LastUpdUs
  ,           LastUpdDT = GETDATE()
  from    People PEO
  where  HouseID = @HouseID
      and  ID = @PeopleID
  
END -- End procedure usp_PeopleSetMain
