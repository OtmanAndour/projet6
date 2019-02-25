
CREATE TABLE role (
                id TINYINT AUTO_INCREMENT NOT NULL,
                name CHAR(20) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE payment (
                id TINYINT AUTO_INCREMENT NOT NULL,
                mode CHAR(20) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE status (
                id_ TINYINT AUTO_INCREMENT NOT NULL,
                name CHAR(15) NOT NULL,
                PRIMARY KEY (id_)
);


CREATE TABLE User (
                id INT AUTO_INCREMENT NOT NULL,
                lastname VARCHAR(30) NOT NULL,
                firstname VARCHAR(30) NOT NULL,
                username VARCHAR(30) NOT NULL,
                password CHAR(20) NOT NULL,
                phone_number CHAR(10) NOT NULL,
                email VARCHAR(60) NOT NULL,
                role TINYINT NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE Adress (
                id INT AUTO_INCREMENT NOT NULL,
                street VARCHAR(200) NOT NULL,
                city VARCHAR(50) NOT NULL,
                zipcode CHAR(5) NOT NULL,
                user_id INT NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE Restaurant (
                id TINYINT AUTO_INCREMENT NOT NULL,
                adress_id INT NOT NULL,
                name_ VARCHAR(100) NOT NULL,
                PRIMARY KEY (id, adress_id)
);


CREATE TABLE Ingredient (
                id INT AUTO_INCREMENT NOT NULL,
                name VARCHAR(50) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE Stock (
                ingredient_id INT NOT NULL,
                pizzeria_id TINYINT NOT NULL,
                quantity INT NOT NULL,
                PRIMARY KEY (ingredient_id, pizzeria_id)
);


CREATE TABLE Pizza (
                id INT AUTO_INCREMENT NOT NULL,
                name VARCHAR(50) NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE Pizza_Ingredient (
                ingredient_id INT NOT NULL,
                pizza_id INT NOT NULL,
                dosis TINYINT NOT NULL,
                PRIMARY KEY (ingredient_id, pizza_id)
);


CREATE TABLE Order_Pizza (
                number INT AUTO_INCREMENT NOT NULL,
                id TINYINT NOT NULL,
                pizzeria_id INT NOT NULL,
                user_id INT NOT NULL,
                date DATETIME NOT NULL,
                status TINYINT NOT NULL,
                delivered BOOLEAN NOT NULL,
                payment TINYINT NOT NULL,
                PRIMARY KEY (number, id)
);


CREATE TABLE Order_Pizza_Item (
                order_number INT NOT NULL,
                pizza_id INT NOT NULL,
                quantity TINYINT NOT NULL,
                size TINYINT NOT NULL,
                PRIMARY KEY (order_number, pizza_id)
);


ALTER TABLE User ADD CONSTRAINT role_user_fk
FOREIGN KEY (role)
REFERENCES role (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Order_Pizza ADD CONSTRAINT payment_order_fk
FOREIGN KEY (payment)
REFERENCES payment (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Order_Pizza ADD CONSTRAINT status_order_fk
FOREIGN KEY (status)
REFERENCES status (id_)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Adress ADD CONSTRAINT user_adress_fk
FOREIGN KEY (user_id)
REFERENCES User (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Order_Pizza ADD CONSTRAINT user_order_fk
FOREIGN KEY (user_id)
REFERENCES User (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Restaurant ADD CONSTRAINT adress_restaurant_fk
FOREIGN KEY (adress_id)
REFERENCES Adress (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Stock ADD CONSTRAINT restaurant_stock_fk
FOREIGN KEY (pizzeria_id)
REFERENCES Restaurant (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Order_Pizza ADD CONSTRAINT restaurant_order_fk
FOREIGN KEY (id, pizzeria_id)
REFERENCES Restaurant (id, adress_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Stock ADD CONSTRAINT ingredient_stock_fk
FOREIGN KEY (ingredient_id)
REFERENCES Ingredient (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Pizza_Ingredient ADD CONSTRAINT ingredient_pizza_ingredient_fk
FOREIGN KEY (ingredient_id)
REFERENCES Ingredient (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Order_Pizza_Item ADD CONSTRAINT pizza_order_pizza_fk
FOREIGN KEY (pizza_id)
REFERENCES Pizza (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Pizza_Ingredient ADD CONSTRAINT pizza_pizza_ingredient_fk
FOREIGN KEY (pizza_id)
REFERENCES Pizza (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Order_Pizza_Item ADD CONSTRAINT order_order_pizza_fk
FOREIGN KEY (order_number)
REFERENCES Order_Pizza (number)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
