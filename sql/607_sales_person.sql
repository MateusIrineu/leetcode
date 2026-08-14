SELECT SalesPerson.name
FROM SalesPerson
WHERE SalesPerson.sales_id NOT IN (
    SELECT Orders.sales_id
    FROM Orders
    WHERE Orders.com_id = 1
);