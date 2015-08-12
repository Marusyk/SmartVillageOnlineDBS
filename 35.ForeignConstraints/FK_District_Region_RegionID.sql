IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_District_Region_RegionID')
BEGIN
	ALTER TABLE [dbo].[District] ADD CONSTRAINT [FK_District_Region_RegionID] FOREIGN KEY 
		(
			[RegionID]
		) REFERENCES [Region] (
			[ID]
		)
END
GO
