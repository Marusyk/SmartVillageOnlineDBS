IF NOT EXISTS ( SELECT * FROM sysObjects WHERE xtype LIKE 'F' AND name LIKE 'Street_FKC_StreetType')
BEGIN
	ALTER TABLE [dbo].[Street] ADD CONSTRAINT [Street_FKC_StreetType] FOREIGN KEY 
		(
			[StreetTypeID]
		) REFERENCES [StreetType] (
			[StreetTypeID]
		)
END
GO
