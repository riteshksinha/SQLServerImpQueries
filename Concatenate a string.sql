select distinct t1.id,
  STUFF(
         (SELECT ', ' + convert(varchar(10), t2.date, 120)
          FROM yourtable t2
          where t1.id = t2.id
          FOR XML PATH (''))
          , 1, 1, '')  AS date
from yourtable t1;