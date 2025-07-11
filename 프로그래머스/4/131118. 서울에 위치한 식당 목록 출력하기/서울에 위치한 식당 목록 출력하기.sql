SELECT
    i.REST_ID, i.REST_NAME, i.FOOD_TYPE,
    i.FAVORITES, i.ADDRESS, ROUND(AVG(r.REVIEW_SCORE),2) as score
FROM
    REST_INFO i
JOIN
    REST_REVIEW r
ON
    i.REST_ID = r.REST_ID
WHERE
    ADDRESS LIKE '서울%'
GROUP BY
    REST_ID
ORDER BY 
    score desc,
    FAVORITES desc