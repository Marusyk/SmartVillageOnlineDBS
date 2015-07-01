IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'Person_FKC_Citizenship')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [Person_FKC_Citizenship] FOREIGN KEY 
		(
			[CitizenshipId]
		) REFERENCES [Country] (
			[ID]
		)
END
GO
