IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[CityType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	CREATE TABLE [CityType]
	(	[CityTypeID] [int] IDENTITY(1,1) NOT NULL
	,	[Name] [varchar](50) NOT NULL
	, CONSTRAINT [SYS_CityType_PKY] PRIMARY KEY CLUSTERED 
		  (
			  [CityTypeID] ASC
		  ) WITH  FILLFACTOR = 95  ON [PRIMARY]
	)   ON [PRIMARY]
END
GO        