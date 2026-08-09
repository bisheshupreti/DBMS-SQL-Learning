use college;

CREATE TABLE product(
	product_id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    code CHAR(7),
    price DECIMAL(10,2),
    category ENUM('Electronics','Clothings','Food'),
    status VARCHAR(50) DEFAULT 'Available',
    
    CONSTRAINT pk_product PRIMARY KEY(product_id),
    CONSTRAINT uq_product_code UNIQUE(code),
    CONSTRAINT chk__product_price CHECK(price>0)
	);

DESC product;