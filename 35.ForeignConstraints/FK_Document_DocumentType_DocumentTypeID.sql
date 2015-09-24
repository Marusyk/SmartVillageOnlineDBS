IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Document_DocumentType_DocumentTypeID')
BEGIN
	ALTER TABLE [dbo].[Document] ADD CONSTRAINT [FK_Document_DocumentType_DocumentTypeID] FOREIGN KEY 
		(
			[DocumentTypeID]
		) REFERENCES [DocumentType] (
			[ID]
		)
END
GO
