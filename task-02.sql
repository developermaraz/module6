SELECT
    a.`order_id`,
    b.`name`,
    a.`quantity`,
    a.`price`,
    a.`quantity`*a.`price` as `TotalPrice`,
    a.`created_at`
FROM
    order_items a
LEFT JOIN
    products b ON a.`product_id`=b.`id`
ORDER BY 
    `TotalPrice` ASC;
