SELECT
    c.`name`,
    a.`quantity` * a.`price` AS `TotalAmount`
FROM
    order_items a
LEFT JOIN
    products b ON b.id = a.`product_id`
LEFT JOIN
    categories c ON c.id = b.`category_id`
GROUP BY
    c.id
ORDER BY `TotalAmount` DESC;
