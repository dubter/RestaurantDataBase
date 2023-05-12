--1) вывести суммарную прибыль, принесенную каждым продавцом
SELECT worker_id, SUM(cost_amt)
    FROM restaurant.Sales
    GROUP BY worker_id
    ORDER BY SUM(cost_amt) DESC;

--2) вывести среднюю цену за товары, которых было продано меньше/больше 10 штук, но которые при этом продавались
SELECT sold_cnt < 10, AVG(price_rate)
    FROM restaurant.goods_info
    GROUP BY sold_cnt < 10
    HAVING COUNT(*) > 0;

--3) вывести сколько мы платим каждому типу работников
SELECT DISTINCT position_value, SUM(salary_amt) OVER (PARTITION BY position_value)
    FROM restaurant.Workers
    WHERE works_now_flg;

--4) вывести сумму чека в бд, сумму чека, какой она должна быть и id работника, ответственного за чек
SELECT Sales.cost_amt, Sales.worker_id, SUM(Goods.price_rate)
    OVER (
        PARTITION BY Sales.sale_id
        ORDER BY Sales.sales_dttm)
    FROM restaurant.Sales
        LEFT JOIN  restaurant.Sales_Goods
            ON Sales.sale_id = Sales_Goods.sale_id
        LEFT JOIN restaurant.Goods
            ON Goods.good_id = Sales_Goods.good_id;

--5) разобьем товары на группы по цене за unit
SELECT products_info.product_name, products_info.price_rate, DENSE_RANK()
    OVER (
        ORDER BY price_rate)
    FROM restaurant.Products
        LEFT JOIN restaurant.products_info
            ON Products.product_id = products_info.product_id
    WHERE products_info.valid_to_dt IS NULL;

--6) для чека каждого работника выведем дату и время предыдущего и следующего чека
SELECT *, LAG(sales_dttm, 1, NULL)
    OVER (
        PARTITION BY worker_id
        ORDER BY sales_dttm),
       LEAD(sales_dttm, 1, NULL)
           OVER (
               PARTITION BY worker_id
               ORDER BY sales_dttm)
    FROM restaurant.Sales;
