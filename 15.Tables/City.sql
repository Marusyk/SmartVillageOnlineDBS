IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[City]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	CREATE TABLE [City]
	(	[CityID] [int] IDENTITY(1,1) NOT NULL
	,	[Name] [varchar](50) NOT NULL
	,	[ZipCode] [varchar](10) NULL
	,	[CountryID] [int] NOT NULL
	,	[RegionID] [int] NOT NULL
	,	[DistrictID] [int]
	,   [CityTypeID] [int] NOT NULL
	, CONSTRAINT [SYS_City_PKY] PRIMARY KEY CLUSTERED 
		  (
			  [CityID] ASC
		  ) WITH  FILLFACTOR = 95  ON [PRIMARY]
	)   ON [PRIMARY]
END
GO        