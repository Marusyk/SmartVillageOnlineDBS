IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'Person_FKC_Catalog')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [Person_FKC_Catalog] FOREIGN KEY 
		(
			[CatalogId]
		) REFERENCES [Catalog] (
			[ID]
		)
END
GO
