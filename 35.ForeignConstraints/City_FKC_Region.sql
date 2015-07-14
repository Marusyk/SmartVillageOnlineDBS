IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'City_FKC_Region')
BEGIN
	ALTER TABLE [dbo].[City] ADD CONSTRAINT [City_FKC_Region] FOREIGN KEY 
		(
			[RegionID]
		) REFERENCES [Region] (
			[ID]
		)
END
GO
