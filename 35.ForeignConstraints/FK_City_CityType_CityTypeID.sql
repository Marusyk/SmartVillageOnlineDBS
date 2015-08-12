IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_City_CityType_CityTypeID')
BEGIN
	ALTER TABLE [dbo].[City] ADD CONSTRAINT [FK_City_CityType_CityTypeID] FOREIGN KEY 
		(
			[CityTypeID]
		) REFERENCES [CityType] (
			[ID]
		)
END
GO
