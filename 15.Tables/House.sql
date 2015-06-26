IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[House]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [House]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [HouseNr] [varchar](10) NOT NULL
  , [KadastrNr] [varchar](10)
  , [BuildNr] [varchar](10) NOT NULL
  , [AddressID] [int] NOT NULL
  , [PhoneNr] [varchar](12) NULL
  , [PhoneCode] [varchar](5) NULL
  , [FaxNr] [varchar](12) NULL
  , [Year] [int] NULL
  , [Code] [varchar](50) NULL
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [varchar](50) NOT NULL	
  , CONSTRAINT [SYS_House_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO