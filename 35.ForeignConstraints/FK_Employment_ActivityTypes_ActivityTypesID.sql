IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Employment_ActivityTypes_ActivityTypesID')
BEGIN
	ALTER TABLE [dbo].[Employment] ADD CONSTRAINT [FK_Employment_ActivityTypes_ActivityTypesID] FOREIGN KEY 
		(
			[ActivityTypesID]
		) REFERENCES [ActivityTypes] (
			[ID]
		)
END
GO
