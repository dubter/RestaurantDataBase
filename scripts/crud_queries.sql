UPDATE restaurant.Providers
    SET contract_expiry_dt = NULL
    WHERE contract_expiry_dt < '2021-04-07';

SELECT entity_nm
    FROM restaurant.Providers
        RIGHT JOIN restaurant.entity_properties
            ON providers.provider_id = entity_properties.provider_id
    WHERE contract_expiry_dt IS NULL;

UPDATE restaurant.Products_info
    SET valid_to_dt = '2021-04-07';

INSERT INTO restaurant.Products_info VALUES (1, 'Black tea', 5000.0, 9, 'kg', '2021-04-07');
INSERT INTO restaurant.Products_info VALUES (2, 'Green tea', 5000.0, 12, 'kg', '2021-04-07');
INSERT INTO restaurant.Products_info VALUES (3, 'Coffee grains', 5000.0, 2, 'kg', '2021-04-07');
INSERT INTO restaurant.Products_info VALUES (4, 'Nestle Capsules', 100.0, 998, 'units', '2021-04-07');
INSERT INTO restaurant.Products_info VALUES (5, 'Tiramisu', 100.0, 23, 'units', '2021-04-07');
INSERT INTO restaurant.Products_info VALUES (6, 'Sugar', 50.0, 2, 'kg', '2021-04-07');
INSERT INTO restaurant.Products_info VALUES (7, 'Milk', 60.0, 5, 'l', '2021-04-07');
INSERT INTO restaurant.Products_info VALUES (8, 'Maffin', 60.0, 30, 'kg', '2021-04-07');
INSERT INTO restaurant.Products_info VALUES (9, 'Chockolate', 3000.0, 49, 'kg', '2021-04-07');
INSERT INTO restaurant.Products_info VALUES (10, 'Nut syrop', 500.0, 25, 'l', '2021-04-07');
INSERT INTO restaurant.Products_info VALUES (11, 'Caramel syrop', 500.0, 20, 'l', '2021-04-07');
INSERT INTO restaurant.Products_info VALUES (12, 'Cup', 5.0,  30, 'units', '2021-04-07');


INSERT INTO restaurant.Sales VALUES (12, 4, 100.0, '2021-04-05 10:28');
INSERT INTO restaurant.Sales VALUES (13, 5, 90.0, '2021-04-03 10:39');
INSERT INTO restaurant.Sales VALUES (14, 5, 260.0, '2021-04-04 11:17');
INSERT INTO restaurant.Sales VALUES (15, 3, 90.0, '2021-04-06 18:50');
INSERT INTO restaurant.Sales VALUES (16, 4, 90.0, '2021-04-07 15:20');
INSERT INTO restaurant.Sales VALUES (17, 5, 90.0, '2021-04-06 17:19');
INSERT INTO restaurant.Sales VALUES (18, 3, 90.0, '2021-04-06 18:53');
INSERT INTO restaurant.Sales VALUES (19, 4, 135.0, '2021-04-05 11:46');
INSERT INTO restaurant.Sales VALUES (20, 4, 60.0, '2021-04-02 10:01');
INSERT INTO restaurant.Sales VALUES (21, 5, 60.0, '2021-04-03 10:49');
INSERT INTO restaurant.Sales VALUES (22, 3, 75.0, '2021-04-03 19:58');

INSERT INTO restaurant.Sales_Goods VALUES (12, 1);
INSERT INTO restaurant.Sales_Goods VALUES (12, 1);
INSERT INTO restaurant.Sales_Goods VALUES (13, 4);
INSERT INTO restaurant.Sales_Goods VALUES (14, 5);
INSERT INTO restaurant.Sales_Goods VALUES (14, 3);
INSERT INTO restaurant.Sales_Goods VALUES (14, 4);
INSERT INTO restaurant.Sales_Goods VALUES (15, 3);
INSERT INTO restaurant.Sales_Goods VALUES (16, 4);
INSERT INTO restaurant.Sales_Goods VALUES (17, 3);
INSERT INTO restaurant.Sales_Goods VALUES (18, 3);
INSERT INTO restaurant.Sales_Goods VALUES (19, 6);
INSERT INTO restaurant.Sales_Goods VALUES (19, 7);
INSERT INTO restaurant.Sales_Goods VALUES (20, 7);
INSERT INTO restaurant.Sales_Goods VALUES (21, 8);
INSERT INTO restaurant.Sales_Goods VALUES (22, 6);

DELETE
    FROM restaurant.Sales_Goods
    WHERE sale_ID = 22;

DELETE
    FROM restaurant.Sales
    WHERE sale_id = 22;

SELECT *
    FROM restaurant.Products_info
    WHERE ((left_amt < 10
                AND units_desc = 'kg')
               OR (left_amt < 50
                       AND units_desc = 'units')
                      AND valid_to_dt ISNULL);



