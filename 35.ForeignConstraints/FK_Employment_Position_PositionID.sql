IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Employment_Position_PositionID')
BEGIN
	ALTER TABLE [dbo].[Employment] ADD CONSTRAINT [FK_Employment_Position_PositionID] FOREIGN KEY 
		(
			[PositionID]
		) REFERENCES [Position] (
			[ID]
		)
END
GO
