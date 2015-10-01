IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[Employment]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [Employment]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [PersonID] [int] NOT NULL
  , [ActivityTypesID] [int] NULL
  , [CompanyID] [int] NULL
  , [PositionID] [int] NULL
  , [DateStart] [smalldatetime] NULL
  , [DateEnd] [smalldatetime] NULL
  , [IsCurrent] [bit] NOT NULL DEFAULT (0)
  , [Description] [nvarchar](500) NULL
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [nvarchar](50) NOT NULL
  , CONSTRAINT [SYS_Employment_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO