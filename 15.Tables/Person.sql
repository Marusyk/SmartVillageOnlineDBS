IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[Person]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
  CREATE TABLE [Person]
  ( [ID] [int] IDENTITY(1,1) NOT NULL
  , [FirstName] [varchar](60) NOT NULL
  , [Name] [varchar](60) NOT NULL
  , [LastName] [varchar](60) NOT NULL
  , [DateBirth] [date] NOT NULL
  , [Sex] [bit] NOT NULL
  , [IsResident] [bit] NOT NULL DEFAULT (1)
  , [AddressBirthId] [int] NULL
  , [AddressLiveId] [int] NULL
  , [NationalityId] [int] NULL
  , [IdentificationCode] [varchar](10) NULL
  , [PassSeria] [varchar](5) NULL
  , [PassNr] [int] NULL
  , [PassDate] [date] NULL
  , [PassAuthorityId] [int] NULL
  , [FamilyStatusId] [int] NULL
  , [CitizenshipId] [int] NULL
  , [CatalogId] [int] NOT NULL
  , [IsSojourn] [bit] NOT NULL DEFAULT (0)
  , [Photo] [binary]
  , [PadFirstName] [varchar](60)
  , [PadName] [varchar](60)
  , [PadLastName] [varchar](60)
  , [DatFirstName] [varchar](60)
  , [DatName] [varchar](60)
  , [DatLastName] [varchar](60)
  , [LastUpdDT] [smalldatetime] NOT NULL
  , [LastUpdUS] [varchar](50) NOT NULL	
  , CONSTRAINT [SYS_Person_PKY] PRIMARY KEY CLUSTERED 
    (
      [ID] ASC
    ) WITH  FILLFACTOR = 95  ON [PRIMARY]
  )   ON [PRIMARY]
END
GO