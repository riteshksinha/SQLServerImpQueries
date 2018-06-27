IF EXISTS(SELECT 1 FROM sys.columns 
          WHERE Name = N'columnName'
          AND Object_ID = Object_ID(N'schemaName.tableName'))
BEGIN
    -- Column Exists
END
