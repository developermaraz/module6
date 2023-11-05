SELECT
    a.`customer_id`,
    b.`name`,
    SUM(a.`total_price`) as `total_price`
FROM
    orders a
LEFT JOIN
    customers b ON a.customer_id = b.id
GROUP BY 
    b.`id`
ORDER BY
    `total_price` DESC
LIMIT 5;