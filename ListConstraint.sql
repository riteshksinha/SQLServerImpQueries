SELECT    a.table_name,
          a.constraint_name,
          b.column_name,
          a.constraint_type
FROM      information_schema.table_constraints a,
          information_schema.key_column_usage b
WHERE     a.table_name = 'EMP'
AND       a.table_name = b.table_name
AND       a.table_schema = b.table_schema
AND       a.constraint_name = b.constraint_name;
