IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Employment_Companies_CompanyID')
BEGIN
	ALTER TABLE [dbo].[Employment] ADD CONSTRAINT [FK_Employment_Companies_CompanyID] FOREIGN KEY 
		(
			[CompanyID]
		) REFERENCES [Companies] (
			[ID]
		)
END
GO
