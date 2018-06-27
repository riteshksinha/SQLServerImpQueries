SELECT DISTINCT T1.ID,
  STUFF(
         (SELECT ', ' + CONVERT(VARCHAR(10), T2.DATE, 120)
            FROM TABLENAME T2
           WHERE T1.ID = T2.ID
             FOR XML PATH (''))
          , 1, 1, '')  AS CONCATENATED_DATE
FROM TABLENAME T1;

/**********************************************************/

SELECT MAIN.SUBJECTID,
       LEFT(MAIN.STUDENTS,LEN(MAIN.STUDENTS)-1) AS "STUDENTS"
FROM
    (
        SELECT DISTINCT ST2.SUBJECTID, 
            (
                SELECT ST1.STUDENTNAME + ',' AS [TEXT()]
                FROM DBO.STUDENTS ST1
                WHERE ST1.SUBJECTID = ST2.SUBJECTID
                ORDER BY ST1.SUBJECTID
                FOR XML PATH ('')
            ) [STUDENTS]
        FROM DBO.STUDENTS ST2
    ) [MAIN]
    
 /**********************************************************/
 
 SELECT DISTINCT ST2.SUBJECTID, 
    SUBSTRING(
        (
            SELECT ','+ST1.STUDENTNAME  AS [TEXT()]
            FROM DBO.STUDENTS ST1
            WHERE ST1.SUBJECTID = ST2.SUBJECTID
            ORDER BY ST1.SUBJECTID
            FOR XML PATH ('')
        ), 2, 1000) [STUDENTS]
FROM DBO.STUDENTS ST2
