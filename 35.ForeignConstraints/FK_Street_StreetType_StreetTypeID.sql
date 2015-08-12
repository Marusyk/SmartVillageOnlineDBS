IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Street_StreetType_StreetTypeID')
BEGIN
	ALTER TABLE [dbo].[Street] ADD CONSTRAINT [FK_Street_StreetType_StreetTypeID] FOREIGN KEY 
		(
			[StreetTypeID]
		) REFERENCES [StreetType] (
			[ID]
		)
END
GO
