IF NOT EXISTS (select * from dbo.sysobjects where id = object_id(N'[Address]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
	CREATE TABLE [Address]
	(	[AddressID] [int] IDENTITY(1,1) NOT NULL
	,	[CityID] [int] NOT NULL
	,	[StreetID] [int]
	, CONSTRAINT [SYS_Address_PKY] PRIMARY KEY CLUSTERED 
		  (
			  [AddressID] ASC
		  ) WITH  FILLFACTOR = 95  ON [PRIMARY]
	)   ON [PRIMARY]
END
GO