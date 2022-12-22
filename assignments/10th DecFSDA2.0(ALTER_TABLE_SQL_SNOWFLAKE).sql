use database demo_database;

----WHEN THERE IS NO DATA AVAIALBLE --HARDLY 1-5 % IN REALITY 
CREATE OR REPLACE TABLE aj_sales 
(
  customer_id VARCHAR(1) PRIMARY KEY ,
  order_date DATE DEFAULT TO_DATE('2022-12-10'),
  product_id INT not null);
  
CREATE OR REPLACE TABLE  aj_sales_COPY LIKE  aj_sales;
DESCRIBE TABLE aj_sales_COPY;

ALTER TABLE aj_sales_COPY
DROP PRIMARY KEY;

alter table aj_sales_COPY
ADD column aadhar_no varchar(15) PRIMARY KEY;

----WHEN THERE IS DATA AVAIALBLE --HARDLY 1-5 % IN REALITY 
INSERT INTO aj_sales
VALUES
('A', '2021-01-01', '1'),
('A', '2021-01-01', '2'),
('A', '2021-01-07', '2'),
('A', '2021-01-10', '3'),
('A', '2021-01-11', '3'),
('A', '2021-01-11', '3'),
('B', '2021-01-01', '2'),
('B', '2021-01-02', '2'),
('B', '2021-01-04', '1'),
('B', '2021-01-11', '1'),
('B', '2021-01-16', '3'),
('C','2021-01-07', '3'),
('d','2021-01-23', 4); 

INSERT INTO aj_sales(customer_id,product_id)
VALUES('E',5); 

SELECT * FROM AJ_SALES;

CREATE OR REPLACE TABLE  aj_sales_COPY_DATA AS
SELECT * FROM AJ_SALES;

SELECT * FROM AJ_SALES_COPY_DATA;

DESCRIBE TABLE AJ_SALES_COPY_DATA;

ALTER TABLE AJ_SALES_COPY_DATA
DROP PRIMARY KEY;

alter table aj_sales_copy_data
ADD column aadhar_no varchar(15);

-- ADD THE COLUMN FIRST AND THEN MAKE IT PK USING 2 STEP PROCESS
alter table aj_sales_copy_data
ADD PRIMARY KEY (aadhar_no);



