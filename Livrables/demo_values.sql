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
           
INSERT INTO adress (street, city, zipcode)
    VALUES ("5 rue Amestris","Paris","75016"),
           ("130 avenue Xerses","Paris","75018"),
           ("13 place Ishval","Paris","75017"),
           ("34 cours Xing","Paris","75015"),
           ("240 boulevard Reole","Paris","75011");

           
INSERT INTO restaurant (name_, adress_id)
    VALUES ('Glutonny', 1),
           ('Greed', 2),
           ('Lust', 3),
           ('Envy', 4),
           ('Pride', 5);
           
           

INSERT INTO user (lastname, firstname, username, password, phone_number, email, role)
    VALUES ("Paul","Antoine","PaulAntoine","XXXXXXXX","06XXXXXXXX","client1@test.com",1),
           ("Damien","Leclerc","DamienLeclerc","XXXXXXXX","06XXXXXXXX","client2@test.com",1),
           ("Jeanne","Moreau","JeanneMoreau","XXXXXXXX","06XXXXXXXX","client3@test.com",1),
           ("Abdelaziz","Bouteflika","AbdelBouteflika","XXXXXXXX","06XXXXXXXX","client4@test.com",1),
           ("Kim","JongUn","KimJongUn","XXXXXXXX","06XXXXXXXX","client5@test.com",1);
           


INSERT INTO user (lastname, firstname, username, password, phone_number, email, role)
    VALUES ("Aurore","Leroy","AuroreLeroy","XXXXXXXX","06XXXXXXXX","receptionist@test.com",2),
           ("Luca","Manti","LucaManti","XXXXXXXX","06XXXXXXXX","pizzaiolo@test.com",3),
           ("Jean","Castel","JeanCastel","XXXXXXXX","06XXXXXXXX","deliveryguy@test.com",4),
           ("Jacques","Parrain","JacquesParrain","XXXXXXXX","06XXXXXXXX","manager@test.com",5);



INSERT INTO adress (street, city, zipcode, user_id)
    VALUES ("7 rue Aerugo","Paris","75016", 1),
           ("16 avenue Baschool","Paris","75018", 2),
           ("49 place Creta","Paris","75017", 3),
           ("64 cours Dublith","Paris","75015", 4),
           ("154 boulevard Kanama","Paris","75011", 5);
           
           

INSERT INTO order_pizza (id, pizzeria_id, user_id, date, status, delivered, payment)
    VALUES (1,1,1,NOW(),1,0,1),
           (2,2,2,NOW(),2,0,2),
           (3,3,3,NOW(),3,0,3),
           (4,4,4,NOW(),4,1,4),
           (5,5,5,NOW(),5,1,1);
           
           
INSERT INTO order_pizza_item (order_number, pizza_id, quantity, size)
    VALUES (1,1,1,1),
           (2,2,1,2),
           (3,3,1,3),
           (4,1,1,2),
           (4,2,1,2),
           (5,1,1,3),
           (5,2,1,3),
           (5,3,1,3);
           