INSERT INTO restaurant.Workers VALUES (1, 50000.0, 'Manager', 100, true);
INSERT INTO restaurant.Workers VALUES (2, 50000.0, 'Manager', 50, true);
INSERT INTO restaurant.Workers VALUES (3, 30000.0, 'Cashier', 40, true);
INSERT INTO restaurant.Workers VALUES (4, 30000.0, 'Cashier', 30, true);
INSERT INTO restaurant.Workers VALUES (5, 30000.0, 'Cashier', 40, true);
INSERT INTO restaurant.Workers VALUES (6, 0, 'Cashier', 10, false);
INSERT INTO restaurant.Workers VALUES (7, 15000.0, 'Cleaner', 20, true);
INSERT INTO restaurant.Workers VALUES (8, 0, 'Cleaner', 0, false);

INSERT INTO restaurant.Individual_properties VALUES (1, 1, 'Katya', '6381', '783372', '9876 8987 6758 3212', 'A5BV90');
INSERT INTO restaurant.Individual_properties VALUES (2, 2, 'Michael', '4513', '745477', '9876 9087 6758 3212', 'H04ED1');
INSERT INTO restaurant.Individual_properties VALUES (3, 3, 'Dmitrij', '9835', '019344', '9876 3456 6758 3212', 'L9N432');
INSERT INTO restaurant.Individual_properties VALUES (4, 4, 'Lena', '3452', '901093', '9876 8987 1235 3212', 'CC912K');
INSERT INTO restaurant.Individual_properties VALUES (5, 5, 'Ann', '1234', '134555', '9876 8987 0786 3212', 'X5DA09');
INSERT INTO restaurant.Individual_properties VALUES (6, 6, 'Boris', '0598', '345190', '9876 8987 1237 3212', NULL);
INSERT INTO restaurant.Individual_properties VALUES (7, 7, 'Tony', '4574', '090394', '9876 8987 6756 3212', '44SP09');
INSERT INTO restaurant.Individual_properties VALUES (8, 8, 'Raul', '4332', '783444', '9876 8987 6755 3212', 'HH56IO');


INSERT INTO restaurant.Providers VALUES (1, '2022-01-01');
INSERT INTO restaurant.Providers VALUES (2, '2021-05-01');
INSERT INTO restaurant.Providers VALUES (3, '2023-06-01');
INSERT INTO restaurant.Providers VALUES (4, '2021-02-01');
INSERT INTO restaurant.Providers VALUES (5, '2030-08-01');
INSERT INTO restaurant.Providers VALUES (6, '2022-02-01');
INSERT INTO restaurant.Providers VALUES (7, '2023-06-01');
INSERT INTO restaurant.Providers VALUES (8, '2021-03-01');
INSERT INTO restaurant.Providers VALUES (9, NULL);

INSERT INTO restaurant.Entity_properties VALUES (1, 1, 'Mimishka', '11234567', '098765', '3485791');
INSERT INTO restaurant.Entity_properties VALUES (2, 2, 'Pimenov&Sons', '10009222', '009532', '3485791');
INSERT INTO restaurant.Entity_properties VALUES (3, 3, 'AlisherCo', '2992944', '16776', '3485791');
INSERT INTO restaurant.Entity_properties VALUES (4, 4, 'ElkGoods', '44444444', '487684', '3485791');
INSERT INTO restaurant.Entity_properties VALUES (5, 5, 'FrEsH!', '4302912', '1351345', '3485791');
INSERT INTO restaurant.Entity_properties VALUES (6, 6, 'OOO NISHTYAK', '1130027', '514515', '3485791');
INSERT INTO restaurant.Entity_properties VALUES (7, 7, 'BTV', '283923', '45145', '3485791');
INSERT INTO restaurant.Entity_properties VALUES (8, 8, '220B', '203892', '1543515', '3485791');
INSERT INTO restaurant.Entity_properties VALUES (9, 9, 'piro', '78910093', '31451', NULL);

INSERT INTO restaurant.Products VALUES (1, 3);
INSERT INTO restaurant.Products VALUES (2, 3);
INSERT INTO restaurant.Products VALUES (3, 4);
INSERT INTO restaurant.Products VALUES (4, 8);
INSERT INTO restaurant.Products VALUES (5, 6);
INSERT INTO restaurant.Products VALUES (6, 7);
INSERT INTO restaurant.Products VALUES (7, 7);
INSERT INTO restaurant.Products VALUES (8, 6);
INSERT INTO restaurant.Products VALUES (9, 6);
INSERT INTO restaurant.Products VALUES (10, 2);
INSERT INTO restaurant.Products VALUES (11, 2);
INSERT INTO restaurant.Products VALUES (12, 5);

INSERT INTO restaurant.Products_info VALUES (1, 'Black tea', 5000.0, 10, 'kg', '2021-04-01');
INSERT INTO restaurant.Products_info VALUES (2, 'Green tea', 5000.0, 12, 'kg', '2021-04-01');
INSERT INTO restaurant.Products_info VALUES (3, 'Coffee grains', 5000.0, 5, 'kg', '2021-04-01');
INSERT INTO restaurant.Products_info VALUES (4, 'Nestle Capsules', 100.0, 1243, 'units', '2021-04-01');
INSERT INTO restaurant.Products_info VALUES (5, 'Tiramisu', 100.0, 50, 'units', '2021-04-01');
INSERT INTO restaurant.Products_info VALUES (6, 'Sugar', 50.0, 20, 'kg', '2021-04-01');
INSERT INTO restaurant.Products_info VALUES (7, 'Milk', 60.0, 18, 'l', '2021-04-01');
INSERT INTO restaurant.Products_info VALUES (8, 'Maffin', 60.0, 34, 'kg', '2021-04-01');
INSERT INTO restaurant.Products_info VALUES (9, 'Chockolate', 3000.0, 50, 'kg', '2021-04-01');
INSERT INTO restaurant.Products_info VALUES (10, 'Nut syrop', 500.0, 29, 'l', '2021-04-01');
INSERT INTO restaurant.Products_info VALUES (11, 'Caramel syrop', 500.0, 31, 'l', '2021-04-01');
INSERT INTO restaurant.Products_info VALUES (12, 'Cup', 5.0, 500, 'units', '2021-04-01');

INSERT INTO restaurant.Goods values (1, 50.0, 'Black tea with sugar', 23);
INSERT INTO restaurant.Goods values (2, 100.0, 'Caramel ruf', 6);
INSERT INTO restaurant.Goods values (3, 90.0, 'Capuccino with nut syrop', 45);
INSERT INTO restaurant.Goods values (4, 90.0, 'Caramel Moccacino', 17);
INSERT INTO restaurant.Goods values (5, 120.0, 'Tiramisu', 9);
INSERT INTO restaurant.Goods values (6, 75.0, 'Maffin', 31);
INSERT INTO restaurant.Goods values (7, 60.0, 'Hot chocolate', 67);
INSERT INTO restaurant.Goods values (8, 60.0, 'Espresso with milk', 22);

INSERT INTO restaurant.Products_Goods VALUES (1, 1);
INSERT INTO restaurant.Products_Goods VALUES (1, 6);
INSERT INTO restaurant.Products_Goods VALUES (2, 3);
INSERT INTO restaurant.Products_Goods VALUES (2, 7);
INSERT INTO restaurant.Products_Goods VALUES (2, 6);
INSERT INTO restaurant.Products_Goods VALUES (2, 11);
INSERT INTO restaurant.Products_Goods VALUES (3, 4);
INSERT INTO restaurant.Products_Goods VALUES (3, 10);
INSERT INTO restaurant.Products_Goods VALUES (4, 4);
INSERT INTO restaurant.Products_Goods VALUES (4, 7);
INSERT INTO restaurant.Products_Goods VALUES (4, 11);
INSERT INTO restaurant.Products_Goods VALUES (5, 5);
INSERT INTO restaurant.Products_Goods VALUES (6, 8);
INSERT INTO restaurant.Products_Goods VALUES (7, 9);
INSERT INTO restaurant.Products_Goods VALUES (8, 3);
INSERT INTO restaurant.Products_Goods VALUES (8, 7);
INSERT INTO restaurant.Products_Goods VALUES (1, 12);
INSERT INTO restaurant.Products_Goods VALUES (2, 12);
INSERT INTO restaurant.Products_Goods VALUES (3, 12);
INSERT INTO restaurant.Products_Goods VALUES (4, 12);
INSERT INTO restaurant.Products_Goods VALUES (7, 12);
INSERT INTO restaurant.Products_Goods VALUES (8, 12);


INSERT INTO restaurant.Sales VALUES (1, 3, 100.0, '2021-04-01 10:20');
INSERT INTO restaurant.Sales VALUES (2, 3, 90.0, '2021-04-01 10:33');
INSERT INTO restaurant.Sales VALUES (3, 3, 135.0, '2021-04-01 11:19');
INSERT INTO restaurant.Sales VALUES (4, 4, 50.0, '2021-03-31 18:57');
INSERT INTO restaurant.Sales VALUES (5, 4, 90.0, '2021-03-30 15:29');
INSERT INTO restaurant.Sales VALUES (6, 5, 90.0, '2021-03-30 17:12');
INSERT INTO restaurant.Sales VALUES (7, 5, 90.0, '2021-03-29 18:53');
INSERT INTO restaurant.Sales VALUES (8, 3, 120.0, '2021-03-29 11:44');
INSERT INTO restaurant.Sales VALUES (9, 4, 180.0, '2021-03-29 10:09');
INSERT INTO restaurant.Sales VALUES (10, 4, 90.0, '2021-03-29 10:41');
INSERT INTO restaurant.Sales VALUES (11, 4, 210.0, '2021-03-29 19:55');

INSERT INTO restaurant.Sales_Goods VALUES (1, 2);
INSERT INTO restaurant.Sales_Goods VALUES (2, 3);
INSERT INTO restaurant.Sales_Goods VALUES (3, 6);
INSERT INTO restaurant.Sales_Goods VALUES (3, 7);
INSERT INTO restaurant.Sales_Goods VALUES (4, 1);
INSERT INTO restaurant.Sales_Goods VALUES (5, 2);
INSERT INTO restaurant.Sales_Goods VALUES (6, 3);
INSERT INTO restaurant.Sales_Goods VALUES (7, 4);
INSERT INTO restaurant.Sales_Goods VALUES (8, 5);
INSERT INTO restaurant.Sales_Goods VALUES (9, 2);
INSERT INTO restaurant.Sales_Goods VALUES (9, 5);
INSERT INTO restaurant.Sales_Goods VALUES (10, 4);
INSERT INTO restaurant.Sales_Goods VALUES (11, 8);
INSERT INTO restaurant.Sales_Goods VALUES (11, 2);
INSERT INTO restaurant.Sales_Goods VALUES (11, 1);

SELECT *
    FROM restaurant.Workers;

SELECT *
    FROM restaurant.Individual_properties;

SELECT *
    FROM restaurant.Providers;

SELECT *
    FROM restaurant.Entity_properties;

SELECT *
    FROM restaurant.Products;

SELECT *
    FROM restaurant.Goods;

SELECT *
    FROM restaurant.Sales;
