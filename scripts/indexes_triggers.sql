-- индексы по Individual_properties, Goods_info, Entity_properties, Products_info потому что эти таблицы самые большие и по **_ID, так как это везде первичный ключ
CREATE INDEX ON restaurant.Individual_properties((Individual_properties.worker_ID));

CREATE INDEX ON restaurant.Goods_info((Goods_info.good_ID));

CREATE INDEX ON restaurant.Entity_properties((Entity_properties.ID));

CREATE INDEX ON restaurant.Products_info((Products_info.Product_ID));



-- персональные данные работников со скрытыми паспортными данными и номером кредитки
CREATE OR REPLACE VIEW ind_personal_data AS
    SELECT worker_id, worker_nm,
           coalesce(substring(passport_no, 0, 2), '') || '**' || coalesce(substring(passport_no, 4, 5), '') AS passport_no,
           coalesce(substring(passport_series, 0, 2), '') || '***' || coalesce(substring(passport_series, 5, 6), '') AS passport_series,
           coalesce(substring(credit_card_no, 0, 5), '') || ' **** ****' || coalesce(substring(credit_card_no, 15, 19), '') AS credit_card, Contract_no
    FROM restaurant.Individual_properties;


-- персональные данные поставщиков со скрытыми номром лицензии и номером счета
CREATE OR REPLACE VIEW ent_personal_data AS
    SELECT provider_id, entity_nm,
           coalesce(substring(license_no, 0, 2), '') || '****' || coalesce(substring(license_no, length(license_no) - 2, length(license_no)), '') AS license_no,
           coalesce(substring(account_code, 0, 2), '') || '*****' || coalesce(substring(account_code, length(account_code) - 2, length(account_code)), '') AS account_code,  contract_no
        FROM restaurant.entity_properties;


-- сводная таблица товаров и продуктов, из которых они состоят
CREATE OR REPLACE VIEW consistency_of_goods AS
    SELECT good_name, goods.price_rate AS good_price, p.Product_name, p.price_rate AS product_price
        FROM restaurant.goods
            LEFT JOIN restaurant.Products_Goods pxg
                ON goods.good_id = pxg.good_id
            LEFT JOIN restaurant.products_info p
                ON p.product_id = pxg.product_id
    WHERE p.valid_to_dt IS NULL
    ORDER BY good_name;


-- сводная таблица продаж и товаров, которые были проданы
CREATE OR REPLACE VIEW consistency_of_sales AS
    SELECT sales.sale_id, cost_amt, good_name, price_rate, sales_dttm
        FROM restaurant.sales
            LEFT JOIN restaurant.Sales_Goods sxg
                ON sales.sale_id = sxg.sale_id
            LEFT JOIN restaurant.goods g
                ON g.good_id = sxg.good_id
        ORDER BY sale_id;


-- сводная таблица работников и их продаж
CREATE OR REPLACE VIEW workers_sales AS
    SELECT workers.worker_id, position_value, worker_nm, s.sale_id, cost_amt
        FROM restaurant.workers
            RIGHT JOIN restaurant.sales s
                ON workers.worker_id = s.worker_id
            LEFT JOIN restaurant.Individual_properties ip
                ON workers.worker_id = ip.worker_id
        ORDER BY worker_nm;


-- поставщики, у которых скоро придется заказывать товары
CREATE OR REPLACE VIEW actual_providers AS
    SELECT entity_nm, product_name, price_rate, left_amt, units_desc
        FROM restaurant.Products
            LEFT JOIN restaurant.products_info pi
                ON Products.product_id = pi.product_id
            LEFT JOIN restaurant.Entity_properties Ep
                ON Products.provider_id = Ep.Provider_ID
        WHERE left_amt < 10
          AND valid_to_dt IS NULL;




CREATE OR REPLACE FUNCTION check_goods_update() RETURNS TRIGGER
 AS $$
    BEGIN
        UPDATE restaurant.goods_info SET valid_to_dt = substring(now()::text, 0, 11)::DATE
            WHERE good_id = NEW.good_id AND valid_to_dt isnull;
        INSERT INTO restaurant.goods_info VALUES (new.good_id, new.price_rate, new.good_name, new.sold_cnt, substring(now()::text, 0, 11)::date);
        RETURN new;
    END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION check_products_update() RETURNS TRIGGER
 AS $$
    BEGIN
        update restaurant.products_info SET valid_to_dt = substring(now()::text, 0, 11)::DATE
            WHERE product_id = NEW.product_id AND valid_to_dt isnull;
        INSERT INTO restaurant.products_info VALUES (new.product_id, new.price_rate, new.left_amt, new.units_desc, substring(now()::text, 0, 11)::date);
        RETURN new;
    END
$$ LANGUAGE plpgsql;





CREATE TRIGGER log_goods AFTER UPDATE ON restaurant.goods
    FOR EACH ROW
        EXECUTE FUNCTION check_goods_update();

CREATE TRIGGER log_products AFTER UPDATE ON restaurant.products_info
    FOR EACH ROW
        EXECUTE function check_products_update();
