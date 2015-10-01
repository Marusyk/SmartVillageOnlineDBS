IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Employment_Person_PersonID')
BEGIN
	ALTER TABLE [dbo].[Employment] ADD CONSTRAINT [FK_Employment_Person_PersonID] FOREIGN KEY 
		(
			[PersonID]
		) REFERENCES [Person] (
			[ID]
		)
END
GO
