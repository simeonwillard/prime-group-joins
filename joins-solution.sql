-- 1
SELECT * FROM "customers" 
JOIN "addresses" ON "addresses".customer_id = "customers".id;

-- 2
SELECT "orders".order_date, "line_items".quantity, "products".description FROM "orders"
JOIN "line_items" ON "orders".id = "line_items".order_id
JOIN "products" ON "line_items".product_id = "products".id;

-- 3
SELECT "warehouse".warehouse FROM "warehouse"
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "products".description = 'cheetos';

-- 4
SELECT "warehouse".warehouse FROM "warehouse"
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "products".id = "warehouse_product".product_id
WHERE "products".description = 'diet pepsi';

-- 5
SELECT COUNT("orders") AS "orders_total", "customers".first_name, "customers".last_name  FROM "orders"
JOIN "addresses" ON "orders".address_id = "addresses".id
JOIN "customers" ON "addresses".customer_id = "customers".id
GROUP BY "customers".id;

-- 6
SELECT COUNT("customers") FROM "customers";

-- 7
SELECT COUNT("products") FROM "products";

-- 8
SELECT SUM("warehouse_product".on_hand), "products".description FROM "warehouse_product"
JOIN "products" ON "warehouse_product".product_id = "products".id
WHERE "products".description = 'diet pepsi'
GROUP BY "products".description;

