SELECT DISTINCT T1.ID,
  STUFF(
         (SELECT ', ' + CONVERT(VARCHAR(10), T2.DATE, 120)
            FROM TABLENAME T2
           WHERE T1.ID = T2.ID
             FOR XML PATH (''))
          , 1, 1, '')  AS CONCATENATED_DATE
FROM TABLENAME T1;
