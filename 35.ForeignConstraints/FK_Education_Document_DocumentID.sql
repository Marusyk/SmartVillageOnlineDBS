IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Education_Document_DocumentID')
BEGIN
	ALTER TABLE [dbo].[Education] ADD CONSTRAINT [FK_Education_Document_DocumentID] FOREIGN KEY 
		(
			[DocumentID]
		) REFERENCES [Document] (
			[ID]
		)
END
GO
