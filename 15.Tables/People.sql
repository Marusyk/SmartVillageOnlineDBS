﻿IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[People]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [People]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [PersonID] [int] NOT NULL
  , [HouseID] [int] NOT NULL
  , [PeopleNumber] [int] NOT NULL
  , [FamilyRelationID] [int] NULL
  , [DateRegistration] [datetime] NULL
  , [IsMain] [bit] NOT NULL DEFAULT (0)
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [nvarchar](50) NOT NULL	
  , CONSTRAINT [SYS_People_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO