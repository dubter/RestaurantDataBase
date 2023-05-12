CREATE SCHEMA restaurant;

CREATE TABLE restaurant.Workers (
  Worker_ID   INT PRIMARY KEY,
  Salary_amt NUMERIC(10, 2)
      CHECK (
          Salary_amt >= 0 ),
  Position_value TEXT,
  Shifts_worked_amt NUMERIC(10, 1)
      CHECK (
          Shifts_worked_amt >= 0 ),
  Works_now_flg BOOL
);

CREATE TABLE restaurant.Individual_properties (
  ID  INT PRIMARY KEY,
  Worker_ID INT REFERENCES restaurant.Workers,
  Worker_nm TEXT,
  Passport_no VARCHAR(4)
      CHECK (
          length(Passport_no) = 4) NOT NULL,
  Passport_series VARCHAR(6)
      CHECK (
          length(Passport_series) = 6 ) NOT NULL,
  Credit_card_no TEXT,
  Contract_no TEXT
);

CREATE TABLE restaurant.Sales (
    Sale_ID INT PRIMARY KEY,
    Worker_ID INT REFERENCES restaurant.Workers,
    Cost_amt NUMERIC(10, 2)
        CHECK (
            Cost_amt >= 0 ),
    Sales_dttm timestamp
);

CREATE TABLE restaurant.Providers (
  Provider_ID   INT PRIMARY KEY,
  Contract_expiry_dt DATE
);

CREATE TABLE restaurant.Entity_properties (
  ID  INT PRIMARY KEY,
  Provider_ID INT REFERENCES restaurant.Providers,
  Entity_nm TEXT,
  License_no TEXT,
  Account_code TEXT,
  Contract_no TEXT
);

CREATE TABLE restaurant.Products (
  Product_ID  INT PRIMARY KEY,
  Provider_ID INT REFERENCES restaurant.Providers
);

CREATE TABLE restaurant.Products_info (
  Product_ID INT REFERENCES restaurant.Products,
  Product_name TEXT NOT NULL,
  Price_rate NUMERIC(10, 2)
      CHECK (
          Price_rate >= 0 ),
  Left_amt FLOAT,
  Units_desc TEXT,
  Valid_from_dt DATE NOT NULL,
  Valid_to_dt DATE
);

CREATE TABLE restaurant.Goods (
  Good_ID   INT PRIMARY KEY,
  Price_rate NUMERIC(10, 2)
      CHECK (
          Price_rate > 0 ),
  Good_name TEXT NOT NULL,
  Sold_cnt INT
);

CREATE TABLE restaurant.Goods_info (
  Good_ID   INT REFERENCES restaurant.Goods,
  Price_rate NUMERIC(10, 2)
      CHECK (
          Price_rate > 0 ),
  Good_name text NOT NULL,
  Sold_cnt INT,
  Valid_from_dt DATE NOT NULL,
  Valid_to_dt DATE
);

CREATE TABLE restaurant.Sales_Goods (
    Sale_ID INT REFERENCES restaurant.Sales,
    Good_ID INT REFERENCES restaurant.Goods
);

CREATE TABLE restaurant.Products_Goods (
    Good_ID INT REFERENCES restaurant.Goods,
    Product_ID INT REFERENCES restaurant.Products
);
