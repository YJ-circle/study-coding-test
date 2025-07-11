SELECT
    PT_NAME, PT_NO, GEND_CD, AGE, NVL(TLNO, 'NONE') as TLNO
FROM
    PATIENT
WHERE 
    AGE <= 12
AND
    GEND_CD = 'W'
ORDER BY 
    AGE desc,
    PT_NAME asc;