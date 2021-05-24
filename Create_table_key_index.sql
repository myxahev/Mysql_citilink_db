DROP DATABASE IF EXISTS citilink_shop;
CREATE DATABASE citilink_shop;

USE citilink_shop;

SET FOREIGN_KEY_CHECKS = 0;

-- Создание таблиц

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs( 
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	parent_id INT UNSIGNED NOT NULL DEFAULT 0,
 	name VARCHAR(100) NOT NULL COMMENT 'Название раздела'
) COMMENT 'Разделы интернет-магазина';

DROP TABLE IF EXISTS products;
CREATE TABLE products (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	catalog_id INT UNSIGNED NOT NULL COMMENT 'Раздел', 
	name VARCHAR(255) NOT NULL COMMENT 'Название',
	description VARCHAR(10000) COMMENT 'Описание',
	price DECIMAL (11,2) COMMENT 'Цена',
	attributes JSON NOT NULL COMMENT 'Характеристики',
	picture_id INT UNSIGNED COMMENT 'Фото', 
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Товарные позиции';


DROP TABLE IF EXISTS pictures;
CREATE TABLE pictures(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	product_id INT UNSIGNED NOT NULL COMMENT 'Соответствие товара',
	filename VARCHAR(255) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Фотографии товаров';


DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	firstname VARCHAR(100) NOT NULL COMMENT 'Имя',
	lastname VARCHAR(100) NOT NULL COMMENT 'Фамилия',
	sex CHAR(1) NOT NULL COMMENT 'Пол',
	birthday DATE COMMENT 'Дата рождения',
	email VARCHAR(100) NOT NULL UNIQUE COMMENT 'Email',
	phone VARCHAR(15) NOT NULL UNIQUE COMMENT 'Телефон',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Покупатели';


DROP TABLE IF EXISTS shops;
CREATE TABLE shops(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	name VARCHAR(50) NOT NULL,
	region VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	address VARCHAR(100) NOT NULL,
	schedule VARCHAR(100) NOT NULL DEFAULT 'Пн-Вс с 10:00 до 22:00'
) COMMENT 'Магазины';


DROP TABLE IF EXISTS shops_products;
CREATE TABLE shops_products(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	shop_id INT UNSIGNED NOT NULL,
	product_id INT UNSIGNED NOT NULL,
 	total INT UNSIGNED COMMENT 'Количество товара в магазине',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Наличие товара';


DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	user_id INT UNSIGNED NOT NULL COMMENT 'Заказ пользователя',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Заказы';


DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	order_id INT UNSIGNED NOT NULL COMMENT '№ заказа',
	product_id INT UNSIGNED NOT NULL COMMENT '№ товара',
	quantity INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Состав заказа';


DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	product_id INT UNSIGNED NOT NULL,
	discount DECIMAL(11,1) UNSIGNED COMMENT 'Величина скидки от 0.0 до 1.0',
	started_at DATETIME COMMENT 'Начало действия скидки',
	finished_at DATETIME COMMENT 'Конец действия скидки',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Скидки';


DROP TABLE IF EXISTS markdowns;
CREATE TABLE markdowns(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	product_id INT UNSIGNED UNIQUE NOT NULL,
	price DECIMAL (11,2) NOT NULL COMMENT 'Новая цена',
	reason VARCHAR(100) COMMENT 'Причина уценки',
	shop_id INT(20) UNSIGNED NOT NULL COMMENT 'Магазин'
) COMMENT 'Уцененные товары';


DROP TABLE IF EXISTS opinions;
CREATE TABLE opinions(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	user_id INT UNSIGNED NOT NULL,
	product_id INT UNSIGNED NOT NULL,
	mark ENUM('1', '2', '3', '4', '5') NOT NULL COMMENT 'Оценка',
	description VARCHAR(10000) COMMENT 'Отзыв',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Отзывы';



-- Создание ключей

ALTER TABLE products
  ADD CONSTRAINT products_picture_id_fk 
    FOREIGN KEY (picture_id) REFERENCES pictures(id),
  ADD CONSTRAINT products_catalog_id_fk 
    FOREIGN KEY (catalog_id) REFERENCES catalogs(id); 
    
ALTER TABLE pictures
  ADD CONSTRAINT pictures_product_id_fk 
    FOREIGN KEY (product_id) REFERENCES products(id);
   
ALTER TABLE shops_products
  ADD CONSTRAINT shops_products_shop_id_fk 
    FOREIGN KEY (shop_id) REFERENCES shop(id),
  ADD CONSTRAINT shops_products_product_id_fk 
    FOREIGN KEY (product_id) REFERENCES products(id);
   
ALTER TABLE orders
  ADD CONSTRAINT orders_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES user(id);
   
ALTER TABLE orders_products
  ADD CONSTRAINT orders_order_id_fk 
    FOREIGN KEY (order_id) REFERENCES orders(id),
  ADD CONSTRAINT orders_product_id_fk 
    FOREIGN KEY (product_id) REFERENCES products(id);
   
ALTER TABLE discounts
  ADD CONSTRAINT discounts_product_id_fk 
    FOREIGN KEY (product_id) REFERENCES products(id);

ALTER TABLE markdowns
  ADD CONSTRAINT markdowns_shop_id_fk 
    FOREIGN KEY (shop_id) REFERENCES shop(id),
  ADD CONSTRAINT markdowns_product_id_fk 
    FOREIGN KEY (product_id) REFERENCES products(id);
    
ALTER TABLE opinions
  ADD CONSTRAINT opinions_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES user(id),
  ADD CONSTRAINT opinions_product_id_fk 
    FOREIGN KEY (product_id) REFERENCES products(id); 
      
   
   
-- Создание индексов
   
CREATE INDEX catalogs_name_idx ON catalogs(name);   
   
CREATE INDEX products_name_idx ON products(name);  
CREATE INDEX products_price_idx ON products(price);  

CREATE INDEX discounts_discount_idx ON discounts(discount);  

CREATE INDEX markdowns_price_idx ON markdowns(price);  

CREATE INDEX opinions_mark_idx ON opinions(mark);  

SET FOREIGN_KEY_CHECKS = 1;


