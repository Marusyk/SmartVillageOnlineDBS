IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[Address]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [Address]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [CityID] [int] NOT NULL
  , [StreetID] [int] NULL
  , [PostCode] [int] NULL
  , [BuildNr] [varchar](10) NULL
  , [FlatNr] [varchar](10) NULL
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [varchar](50) NOT NULL	
  , CONSTRAINT [SYS_Address_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO