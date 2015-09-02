IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_People_House_HouseID')
BEGIN
	ALTER TABLE [dbo].[People] ADD CONSTRAINT [FK_People_House_HouseID] FOREIGN KEY 
		(
			[HouseID]
		) REFERENCES [House] (
			[ID]
		)
END
GO
