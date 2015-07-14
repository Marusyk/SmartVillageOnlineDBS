IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[District]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [District]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [Name] [varchar](50) NOT NULL
  , [RegionID] [int] NOT NULL
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [varchar](50) NOT NULL	
  , CONSTRAINT [SYS_District_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO