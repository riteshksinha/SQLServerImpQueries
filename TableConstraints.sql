select    column_name, data_type, is_nullable, character_maximum_length
from      information_schema.columns
where     table_name='emp';
