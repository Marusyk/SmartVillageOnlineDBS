IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'FK_Person_Catalog_CatalogId')
BEGIN
	ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK_Person_Catalog_CatalogId] FOREIGN KEY 
		(
			[CatalogId]
		) REFERENCES [Catalog] (
			[ID]
		)
END
GO
