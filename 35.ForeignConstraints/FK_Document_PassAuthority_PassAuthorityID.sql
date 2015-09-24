IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Document_PassAuthority_PassAuthorityID')
BEGIN
	ALTER TABLE [dbo].[Document] ADD CONSTRAINT [FK_Document_PassAuthority_PassAuthorityID] FOREIGN KEY 
		(
			[PassAuthorityID]
		) REFERENCES [PassAuthority] (
			[ID]
		)
END
GO
