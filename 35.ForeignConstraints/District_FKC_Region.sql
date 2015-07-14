IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'District_FKC_Region')
BEGIN
	ALTER TABLE [dbo].[District] ADD CONSTRAINT [District_FKC_Region] FOREIGN KEY 
		(
			[RegionID]
		) REFERENCES [Region] (
			[ID]
		)
END
GO
