IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Education_Institution_InstitutionID')
BEGIN
	ALTER TABLE [dbo].[Education] ADD CONSTRAINT [FK_Education_Institution_InstitutionID] FOREIGN KEY 
		(
			[InstitutionID]
		) REFERENCES [Institution] (
			[ID]
		)
END
GO
