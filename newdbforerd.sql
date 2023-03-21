-- CREATE DATABASE shopping_mall_example;

-- CREATE TABLE `customer_info` (
-- 	`customer_no`	INT(11)	NOT NULL,
-- 	`customer_id`	VARCHAR(20)	NOT NULL,
-- 	`customer_name`	VARCHAR(30)	NOT NULL,
-- 	`customer_addr`	VARCHAR(100)	NOT NULL
-- );
-- 
-- CREATE TABLE `product_list` (
-- 	`product_no`	INT(20)	NOT NULL,
-- 	`product_price`	INT(10)	NOT NULL,
-- 	`product_name`	VARCHAR(100)	NOT NULL
-- );
-- 
CREATE TABLE `order_info` (
	`order_no`	INT(20)	NOT NULL	,
	`product_no`	INT(20)	NOT NULL	,
	`customer_no`	INT(11)	NOT NULL	,
	`deliver_info`	ENUM('배송전', '배송중', '배송완료')	NOT NULL
);

CREATE TABLE `customer_point` (
	`customer_no`	INT(11)	NOT NULL	COMMENT 'PK, FK',
	`point`	INT(10)	NOT NULL	DEFAULT 0
);

ALTER TABLE `customer_info` ADD CONSTRAINT `PK_CUSTOMER_INFO` PRIMARY KEY (
	`customer_no`
);

ALTER TABLE `product_list` ADD CONSTRAINT `PK_PRODUCT_LIST` PRIMARY KEY (
	`product_no`
);

ALTER TABLE `order_info` ADD CONSTRAINT `PK_ORDER_INFO` PRIMARY KEY (
	`order_no`
);

ALTER TABLE `customer_point` ADD CONSTRAINT `PK_CUSTOMER_POINT` PRIMARY KEY (
	`customer_no`
);

ALTER TABLE `customer_point` ADD CONSTRAINT `FK_customer_info_TO_customer_point_1` FOREIGN KEY (
	`customer_no`
)
REFERENCES `customer_info` (
	`customer_no`
);