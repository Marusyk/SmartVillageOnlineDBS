IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_City_District_DistrictID')
BEGIN
	ALTER TABLE [dbo].[City] ADD CONSTRAINT [FK_City_District_DistrictID] FOREIGN KEY 
		(
			[DistrictID]
		) REFERENCES [District] (
			[ID]
		)
END
GO
