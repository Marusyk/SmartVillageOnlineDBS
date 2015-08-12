IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Address_City_CityID')
BEGIN
	ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FK_Address_City_CityID] FOREIGN KEY 
		(
			[CityID]
		) REFERENCES [City] (
			[ID]
		)
END
GO
