SET @rowindex := -1;
 
SELECT
    ROUND(d.LAT_N, 4) as Median 
FROM
   (SELECT @rowindex:=@rowindex + 1 AS rowindex,
           STATION.LAT_N
    FROM STATION
    ORDER BY STATION.LAT_N) AS d
WHERE
d.rowindex IN (FLOOR(@rowindex / 2), CEIL(@rowindex / 2));
