IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'City_FKC_CityType')
BEGIN
	ALTER TABLE [dbo].[City] ADD CONSTRAINT [City_FKC_CityType] FOREIGN KEY 
		(
			[CityTypeID]
		) REFERENCES [CityType] (
			[ID]
		)
END
GO
