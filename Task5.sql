select * from customers;
select * from orders;

SELECT oit.order_item_id, oit.order_id, p.name AS product_name, oit.quantity, oit.price
FROM order_items oit
JOIN products p ON oit.product_id = p.product_id;

select c.category_name, sum(oit.quantity) as total_order
from order_items as oit
join products p on oit.product_id = p.product_id
join categories c on p.category_id = c.category_id
group by c.category_name
order by total_order desc;

SELECT o.order_id, cust.name AS customer, COUNT(oit.order_item_id) AS item_count
FROM orders o
JOIN customers cust ON o.user_id = cust.customer_id
JOIN order_items oit ON o.order_id = oit.order_id
GROUP BY o.order_id, cust.name
HAVING item_count <3;

SELECT o.order_id, o.total_amount, cust.name AS customer_name
FROM orders o
RIGHT JOIN customers cust ON o.user_id = cust.customer_id;

SELECT p.product_id, p.name AS product_name, c.category_name
FROM products p
LEFT JOIN categories c ON p.category_id = c.category_id;

SELECT cust.customer_id, cust.name, o.order_id, o.total_amount
FROM customers cust
LEFT JOIN orders o ON cust.customer_id = o.user_id

UNION

SELECT cust.customer_id, cust.name, o.order_id, o.total_amount
FROM customers cust 
RIGHT JOIN orders o ON cust.customer_id = o.user_id;

 














































