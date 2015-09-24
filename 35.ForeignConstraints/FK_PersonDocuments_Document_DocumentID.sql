IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_PersonDocuments_Document_DocumentID')
BEGIN
	ALTER TABLE [dbo].[PersonDocuments] ADD CONSTRAINT [FK_PersonDocuments_Document_DocumentID] FOREIGN KEY 
		(
			[DocumentID]
		) REFERENCES [Document] (
			[ID]
		)
END
GO
