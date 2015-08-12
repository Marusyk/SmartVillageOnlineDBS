IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_City_Region_RegionID')
BEGIN
	ALTER TABLE [dbo].[City] ADD CONSTRAINT [FK_City_Region_RegionID] FOREIGN KEY 
		(
			[RegionID]
		) REFERENCES [Region] (
			[ID]
		)
END
GO
