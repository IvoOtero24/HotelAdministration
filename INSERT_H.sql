select * from WarenArt;
select * from Ware;
select * from Adresse;
select * from Service;
select * from Zimmer;
-----------------------------
--  INSERT for WarenArt
-----------------------------
INSERT INTO WarenArt (WarenArtID,WarenArtName) VALUES (1,'Toilettenartikel');
INSERT INTO WarenArt (WarenArtID,WarenArtName) VALUES (2,'Zimmerartikel');
INSERT INTO WarenArt (WarenArtID,WarenArtName) VALUES (3, 'Waschraumartikel');
INSERT INTO WarenArt (WarenArtID,WarenArtName) VALUES (4,'Restaurantartikel');
INSERT INTO WarenArt (WarenArtID,WarenArtName) VALUES (5,'Ger�te');

-----------------------------
--  INSERT for Ware
-----------------------------
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (1,'Zahnburste',2,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (2,'Duschtuch',10,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (2,'Duschtuch',10,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (3,'Seife',2,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (4,'Haarshampoo',3,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (5,'Waschmittel',20,3);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (6,'Weichsp�ler',20,3);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (7,'Papierkorb',10,2);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (8,'Serviette',30,4);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (9,'Toiletpaper',20,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (10,'F�n',20,5);
INSERT INTO Ware (WarenID,WarenName,EinzelPreis,WarenArtID) VALUES (11,'Lotion',1,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (12,'Duschhaube',1.5,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (13,'Rasierer',1,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (14,'Zahnpasta',0.5,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (15,'Kissen',10,2);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (16,'Bettwasche',30,2);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (17,'Decke',50,2);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (18,'Staubsauger',100,5);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (19,'Vorhang',30,2);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (20,'Tee',0.7,4);
INSERT INTO Ware (WarenID,WarenName,EinzelPreis,WarenArtID) VALUES (21,'Cafe',1.3,4);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (22,'Putzmittel',15,3);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (23,'Fernseher',100,5);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (24,'PapierBecher',1,4);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (25,'Wine',5,4);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (26,'Milch',2,4);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (27,'Coke',1,4);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (28,'Mineral Wasser',1,4);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (29,'Bier',0.9,4);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (30,'Radler',1,4);

-----------------------------
--  INSERT for Adresse
-----------------------------
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (1,'Ap #641-7526 Pellentesque Ave',29,8,'008132','Nasino','Gibraltar');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (2,'P.O. Box 411, 4760 Tellus. Ave',57,5,'3263','Laives/Leifers','Gambia');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (3,'5746 Purus Rd.',39,7,'9776','Utrecht','Estonia');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (4,'Ap #271-5968 Ut, Ave',32,6,'9865','Canino','American Samoa');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (5,'P.O. Box 676, 8145 Luctus, Av.',95,4,'6606','Alings�s','Libya');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (6,'P.O. Box 194, 8180 Malesuada Av.',3,4,'09484','Mersin','United Arab Emirates');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (7,'Ap #155-2664 Lacus. Ave',33,10,'55500','Huacho','�land Islands');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (8,'579-4772 Nec, St.',22,8,'30328','Paradise','French Polynesia');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (9,'Ap #480-3527 Maecenas Street',5,2,'11212','Mattersburg','Serbia');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (10,'715-8800 Mauris. St.',7,3,'54908','Vehari','Gambia');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (11,'9952 Arcu. St.',64,9,'69007','Zeya','Israel');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (12,'P.O. Box 734, 3093 Nulla Avenue',47,6,'60033208','Castellafiume','Benin');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (13,'Ap #320-7134 Vel, Street',66,8,'99916481','Kitimat','Eritrea');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (14,'P.O. Box 228, 7185 Fermentum Rd.',94,3,'06710','Santarcangelo di Romagna','Denmark');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (15,'1553 Tristique Avenue',58,10,'2048','San Giorgio Albanese','Philippines');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (16,'7583 Vulputate Ave',8,3,'66568','Ancaster Town','Sint Maarten');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (17,'3517 Cras Rd.',15,1,'894589','Ergani','Panama');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (18,'P.O. Box 103, 2547 Justo Street',54,7,'2394238457','Panipat','Saint Kitts and Nevis');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (19,'7992 Ipsum Avenue',29,9,'5578','Spruce Grove','Gabon');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (20,'5893 Quis Avenue',38,3,'74739','Lleida','Uzbekistan');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (21,'9429 Dui St.',85,3,'354412','B�ziers','Algeria');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (22,'Ap #960-6868 Quisque St.',94,8,'07633','Recanati','Namibia');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (23,'P.O. Box 630, 1747 Parturient St.',31,10,'550861','Baltasound','Hungary');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (24,'Ap #470-3684 Dui. St.',28,2,'797465','Straubing','Luxembourg');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (25,'Ap #291-5074 Penatibus Av.',57,10,'16711263','Silius','Viet Nam');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (26,'119-3352 Risus Street',30,7,'Z6725','Medell�n','Argentina');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (27,'P.O. Box 948, 5383 Proin Avenue',40,6,'367166','Racine','New Caledonia');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (28,'208-2234 Nec Avenue',4,8,'31566','Brixton','Japan');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (29,'391-4100 Eget Rd.',12,3,'400400','Dannevirke','Guernsey');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (30,'Ap #124-3208 Justo. Street',31,8,'71184','Montague','Mauritius');

-----------------------------
--  INSERT for service
-----------------------------
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (1,'Fr�hst�ck im Bett',15);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (2,'W�sche',7);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (3,'Spa',50);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (4,'Auto Mieten',20);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (5,'Blumenarrangement',40);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (6,'B�gelservice',5);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (7,'Mail-Dienste',5);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (8,'Masssagen',30);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (9,'Schuhputzservice',10);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (10,'Ticketservice',3);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (11,'Ausflug und F�hrungen',150);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (12,'Flughafen Abholen',50);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (13,'Limousinenservice mit Transfer und Chauffeur',3);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (14,'Kurier',3);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (15,'Trocken Reinigung',10);

-----------------------------
--  INSERT for Zimmer
-----------------------------
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (1,'Single',50);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (2,'Double',98);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (3,'Double',98);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (4,'Double',98);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (5,'Double',98);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (6,'Triple',140);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (7,'Triple',140);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (8,'Triple',140);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (9,'Quad',180);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (10,'Queen',350);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (11,'Queen',350);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (12,'Double',98);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (13,'King',450);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (14,'King',450);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (15,'Single',50);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (16,'Single',50);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (17,'Single',50);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (18,'Quad',180);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (19,'King',450);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (20,'Quad',180);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (21,'Single',50);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (22,'Double',98);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (23,'Double',98);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (24,'Double',98);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (25,'Double',98);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (26,'Triple',140);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (27,'Triple',140);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (28,'Triple',140);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (29,'Quad',180);
INSERT INTO Zimmer (ZimmerNr,ZimmerArt,Einzelpreis) VALUES (30,'Queen',350);
