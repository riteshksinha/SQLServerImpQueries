SELECT    a.name table_name,
          b.name index_name,
          d.name column_name
FROM      sys.tables a,
          sys.indexes b,
          sys.index_columns c,
          sys.columns d
WHERE     a.object_id = b.object_id
AND       b.object_id = c.object_id
AND       b.index_id = c.index_id
AND       c.object_id = d.object_id
AND       c.column_id = d.column_id
AND       a.name = 'employee';
