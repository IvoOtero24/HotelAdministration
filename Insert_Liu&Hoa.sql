-----------------------------
--  INSERT for WarenArt
-----------------------------
INSERT INTO WarenArt (WarenArtID,WarenArtName) VALUES (1,'Toilettenartikel');
INSERT INTO WarenArt (WarenArtID,WarenArtName) VALUES (2,'Zimmerartikel');
INSERT INTO WarenArt (WarenArtID,WarenArtName) VALUES (3, 'Waschraumartikel');
INSERT INTO WarenArt (WarenArtID,WarenArtName) VALUES (4,'Restaurantartikel');
INSERT INTO WarenArt (WarenArtID,WarenArtName) VALUES (5,'Ger?te');

-----------------------------
--  INSERT for Ware
-----------------------------
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (1,'Zahnburste',2,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (2,'Duschtuch',10,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (3,'Seife',2,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (4,'Haarshampoo',3,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (5,'Waschmittel',20,3);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (6,'Weichsp?ler',20,3);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (7,'Papierkorb',10,2);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (8,'Serviette',30,4);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (9,'Toiletpaper',20,1);
INSERT INTO Ware (WarenID,WarenName,Einzelpreis,WarenArtID) VALUES (10,'F?n',20,5);
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
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (5,'P.O. Box 676, 8145 Luctus, Av.',95,4,'6606','Alings?s','Libya');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (6,'P.O. Box 194, 8180 Malesuada Av.',3,4,'09484','Mersin','United Arab Emirates');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (7,'Ap #155-2664 Lacus. Ave',33,10,'55500','Huacho','?land Islands');
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
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (21,'9429 Dui St.',85,3,'354412','B?ziers','Algeria');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (22,'Ap #960-6868 Quisque St.',94,8,'07633','Recanati','Namibia');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (23,'P.O. Box 630, 1747 Parturient St.',31,10,'550861','Baltasound','Hungary');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (24,'Ap #470-3684 Dui. St.',28,2,'797465','Straubing','Luxembourg');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (25,'Ap #291-5074 Penatibus Av.',57,10,'16711263','Silius','Viet Nam');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (26,'119-3352 Risus Street',30,7,'6725','Medell?n','Argentina');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (27,'P.O. Box 948, 5383 Proin Avenue',40,6,'367166','Racine','New Caledonia');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (28,'208-2234 Nec Avenue',4,8,'31566','Brixton','Japan');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (29,'391-4100 Eget Rd.',12,3,'400400','Dannevirke','Guernsey');
INSERT INTO Adresse (AdressID,Strasse,HausNr,TuerNr,PLZ,Ort,Land) VALUES (30,'Ap #124-3208 Justo. Street',31,8,'71184','Montague','Mauritius');

-----------------------------
--  INSERT for service
-----------------------------
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (1,'Fruehstueck im Bett',15);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (2,'Waesche',7);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (3,'Spa',50);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (4,'Auto Mieten',20);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (5,'Blumenarrangement',40);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (6,'B?gelservice',5);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (7,'Mail-Dienste',5);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (8,'Masssagen',30);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (9,'Schuhputzservice',10);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (10,'Ticketservice',3);
INSERT INTO Service (ServiceID,Beschreibung,Einzelpreis) VALUES (11,'Ausflug und F?hrungen',150);
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

select * from Zimmer;
-----------------------------
--  INSERT for Land
-----------------------------
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (1,'AR','Argentina');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (2,'AT','Austria');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (3,'BE','Belgium');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (4,'BR','Brazil');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (5,'CA','Canada');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (6,'CN','China');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (7,'DK','Denmark');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (8,'EG','Egypt');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (9,'FI','Finland');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (10,'FR','France');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (11,'DE','Germany');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (12,'GR','Greece');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (13,'HK','Hong Kong');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (14,'HU','Hungary');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (15,'IS','Iceland');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (16,'IN','India');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (17,'IR','Iran');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (18,'IE','Ireland');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (19,'IT','Italy');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (20,'JP','Japan');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (21,'KR','Korea');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (22,'LU','Luxemburg');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (23,'MO','Macao');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (24,'MY','Malaysia');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (25,'MT','Malta');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (26,'MX','Mexico');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (27,'MN','Mongolia');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (28,'MA','Morocco');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (29,'NL','Netherlands');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (30,'NZ','New Zealand');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (31,'NO','Norway');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (32,'PL','Poland');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (33,'PT','Portugal');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (34,'RO','Romania');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (35,'SG','Singapore');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (36,'SK','Slovakia');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (37,'SI','Slovenia');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (38,'ZA','South Africa');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (39,'ES','Spain');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (40,'SE','Sweden');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (41,'CH','Switzerland');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (42,'TW','Taiwan');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (43,'US','United States of America');
INSERT INTO hotel_admin.Land (LANDID, KENNZEICHEN, LANDNAME) VALUES (44,'VN','Viet Nam');

-----------------------------
--  INSERT for Reisepass
-----------------------------
INSERT INTO hotel_admin.Reisepass (REISEPASSID, LANDID) VALUES ('AAB183297',1);
INSERT INTO hotel_admin.Reisepass (REISEPASSID, LANDID) VALUES ('AAC811035',1);
INSERT INTO hotel_admin.Reisepass (REISEPASSID, LANDID) VALUES ('P4366918',2);
INSERT INTO hotel_admin.Reisepass (REISEPASSID, LANDID) VALUES ('X9011980',2);
INSERT INTO hotel_admin.Reisepass (REISEPASSID, LANDID) VALUES ('G62292599',6);
INSERT INTO hotel_admin.Reisepass (REISEPASSID, LANDID) VALUES ('E59221789',6);
INSERT INTO hotel_admin.Reisepass (REISEPASSID, LANDID) VALUES ('K9180748',16);
INSERT INTO hotel_admin.Reisepass (REISEPASSID, LANDID) VALUES ('J8369854',16);
INSERT INTO hotel_admin.Reisepass (REISEPASSID, LANDID) VALUES ('G8635244',16);
INSERT INTO hotel_admin.Reisepass (REISEPASSID, LANDID) VALUES ('B6001598',44);

-----------------------------
--  INSERT for Gehaltsstufe
-----------------------------
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (10,142375/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (11,152387/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (12,162323/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (13,179210/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (14,189951/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (15,197392/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (16,200000/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (17,220000/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (18,246005/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (19,272121/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (20,284588/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (21,322112/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (22,372132/100);
INSERT INTO hotel_admin.Gehaltsstufe (GEHALTSSTUFEID, MONATSGEHALT) VALUES (23,392198/100);

-----------------------------
--  INSERT for Abteilung
-----------------------------
INSERT INTO hotel_admin.Abteilung (ABTEILUNGSID, BESCHREIBUNG) VALUES (101,'Einkauf');
INSERT INTO hotel_admin.Abteilung (ABTEILUNGSID, BESCHREIBUNG) VALUES (102,'Empfang');
INSERT INTO hotel_admin.Abteilung (ABTEILUNGSID, BESCHREIBUNG) VALUES (103,'Marketing');
INSERT INTO hotel_admin.Abteilung (ABTEILUNGSID, BESCHREIBUNG) VALUES (104,'Personal');
INSERT INTO hotel_admin.Abteilung (ABTEILUNGSID, BESCHREIBUNG) VALUES (105,'Housekeeping');
INSERT INTO hotel_admin.Abteilung (ABTEILUNGSID, BESCHREIBUNG) VALUES (106,'Küche');



-----------------------------
--  INSERT for Person
-----------------------------

INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (1,'Ivo','Ottaro',7329011294,to_date('01.12.1994','DD.MM.YYYY'),3);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (2,'Hoa','Blitza',2342234567,to_date('12.12.1989','DD.MM.YYYY'),8);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (3,'Satveer','Digda',3425345678,to_date('03.01.1992','DD.MM.YYYY'),9);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (4,'Meishen','Kapador',3499456789,to_date('23.06.1989','DD.MM.YYYY'),20);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (5,'Christian','Gapados',8957567890,to_date('24.06.1987','DD.MM.YYYY'),12);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (6,'Sebastian','Paul',4785123456,to_date('23.03.1976','DD.MM.YYYY'),13);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (7,'Luka','Knofen',4375345678,to_date('03.02.1996','DD.MM.YYYY'),4);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (8,'Shagha','Relaxo',5698235212,to_date('11.04.1988','DD.MM.YYYY'),5);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (9,'Arti','Goldini',3485234109,to_date('03.12.1998','DD.MM.YYYY'),7);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (10,'Michael','Flegmon',5768121212,to_date('08.06.1972','DD.MM.YYYY'),6);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (11,'Elijas','Pummeluff',4758304302,to_date('10.09.1993','DD.MM.YYYY'),1);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (12,'Thobias','Glazio',8479011011,to_date('02.10.1992','DD.MM.YYYY'),2);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (13,'Thomas','Evoli',8475120901,to_date('01.05.1969','DD.MM.YYYY'),10);
INSERT INTO hotel_admin.Person (PERSONID, VORNAME, NACHNAME, SVN, GEBURTSDATUM, ADRESSID) VALUES (14,'Katja','Ditto',8435010101,to_date('02.08.1991','DD.MM.YYYY'),11);

-----------------------------
--  INSERT for Bankinformation
-----------------------------
INSERT INTO hotel_admin.Bankinformation (KONTONR, IBAN, BANKNAME, ADRESSID) VALUES (633522819237634,'AT071234123412341234','Erste Bank',22);
INSERT INTO hotel_admin.Bankinformation (KONTONR, IBAN, BANKNAME, ADRESSID) VALUES (633457919237634,'AT071234123412343842','Erste Bank',22);
INSERT INTO hotel_admin.Bankinformation (KONTONR, IBAN, BANKNAME, ADRESSID) VALUES (634579329340094,'AT071234123234238972','Erste Bank',22);
INSERT INTO hotel_admin.Bankinformation (KONTONR, IBAN, BANKNAME, ADRESSID) VALUES (633537498232131,'AT071232323234238972','Bank of Austria',23);
INSERT INTO hotel_admin.Bankinformation (KONTONR, IBAN, BANKNAME, ADRESSID) VALUES (633594758786212,'AT071235653234238972','Bank of Austria',23);
INSERT INTO hotel_admin.Bankinformation (KONTONR, IBAN, BANKNAME, ADRESSID) VALUES (633529347927231,'AT071275651232342389','Bank of Austria',24);

commit;
