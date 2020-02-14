/* Use the specific schema to get the details */
select    *
from      information_schema.tables
where     table_type='view';
