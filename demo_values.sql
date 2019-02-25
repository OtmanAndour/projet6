INSERT INTO payment (mode)
VALUES ("Paid Online"),
		("Cash at pizzeria"),
        ("Cash at delivery"),
		("Card at pizzeria");

INSERT INTO status (name)
VALUES ("Waiting"),
		("Being prepared"),
        ("Ready"),
		("On delivery"),
        ("Delivered");

INSERT INTO role (name)
VALUES ("Client"),
		("Receptionist"),
        ("Pizzaiolo"),
		("Delivery guy"),
        ("Manager");

INSERT INTO pizza (name)
VALUES ("Margerita"),
		("4 Fromages"),
        ("Calzone");
		
INSERT INTO ingredient (name)
    VALUES ('Pâte'),
		   ('Sauce tomate'),
           ('Mozzarella'),
           ('Emmental'),
           ('Gruyere'),
           ('Chedar'),
           ('Poulet'),
           ('Boeuf'),
           ('Champignon'),
           ('Oignon'),
           ('Poivron');
           
INSERT INTO address (street, city, zipcode, comment, type, webcustomer_id, nearest_pizzeria)
    VALUES (1, "5 rue Elie Gintrec", NULL, 'Bordeaux', '33000', NULL, 4, NULL, 1),
           (2, "130 cours du Médoc", NULL, 'Bordeaux', '33000', NULL, 4, NULL, 2),
           (3, "13 place Saint-Pierre", NULL, 'Bordeaux', '33000', NULL, 4, NULL, 3),
           (4, "34 cours Maréchal Juin", NULL, 'Bordeaux', '33000', NULL, 4, NULL, 4),
           (5, "240 cours de la Marne", NULL, 'Bordeaux', '33000', NULL, 4, NULL, 5);

           
INSERT INTO restaurant (name, address_id)
    VALUES (1, 'Victoire', 1),
           (2, 'Chartron', 2),
           (3, 'Saint-Pierre', 3),
           (4, 'Mériadeck', 4),
           (5, 'Gare Saint-Jean', 5);
