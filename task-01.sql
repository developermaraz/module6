-- a = customers
SELECT
    a.`id`,
    a.`user_name`,
    a.`name`,
    a.`email`,
    a.`mobile`,
    a.`created_at`,
    COUNT(b.`customer_id`) AS `total_order`
From 
    customers a
LEFT JOIN
    orders b ON a.`id` = b.`customer_id`
GROUP BY
    a.`id`, a.`user_name`, a.`name`, a.`email`, a.`mobile`, a.`created_at`
ORDER BY 
    `total_order` DESC;