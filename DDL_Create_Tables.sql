/* Statements for CREATION of tables in "Hotel" tablespace */

-----------------------------
--  DDL table for WarenArt
-----------------------------
CREATE TABLE WarenArt(
	WarenArtID NUMBER NOT NULL,
	WarenArtName VARCHAR2(50) NOT NULL
);


-----------------------------
--  DDL table for Ware
-----------------------------
CREATE TABLE Ware(
	WarenID NUMBER NOT NULL,
	WarenName VARCHAR2(50) NOT NULL,
	Einzelpreis NUMBER(7,2) NOT NULL,
	WarenArtID NUMBER NOT NULL
);


-----------------------------
--  DDL table for Adresse
-----------------------------
CREATE TABLE Adresse(
	AdressID NUMBER NOT NULL,
	Strasse VARCHAR2(50) NOT NULL,
	HausNr NUMBER NOT NULL,
	TuerNr NUMBER NOT NULL,
	PLZ NUMBER NULL,
	Ort VARCHAR2(50) NOT NULL, 
	LandID Number NOT NULL	
);


-----------------------------
--  DDL table for Service
-----------------------------
CREATE TABLE Service(
	ServiceID NUMBER NOT NULL,
	Beschreibung VARCHAR2(50) NOT NULL,
	Einzelpreis NUMBER(7,2) NOT NULL
);


-------------------------------
--  DDL table for Zimmer
-------------------------------
CREATE TABLE Zimmer(
	ZimmerNr NUMBER NOT NULL,
	ZimmerArt VARCHAR2(225) NOT NULL,
	Einzelpreis NUMBER(7,2) NOT NULL
);


-------------------------------
--  DDL table for Land
-------------------------------
CREATE TABLE Land(
	LandID NUMBER NOT NULL,
	Kennzeichen VARCHAR2(20) NOT NULL,
	LandName VARCHAR2(255) NOT NULL
);


-------------------------------
--  DDL table for Reisepass
-------------------------------
CREATE TABLE Reisepass(
	ReisepassID VARCHAR(20) NOT NULL,
	LandID NUMBER NOT NULL
);


-------------------------------
--  DDL table for Gehaltsstufe
-------------------------------
CREATE TABLE Gehaltsstufe(
	GehaltsstufeID NUMBER NOT NULL,
	Monatsgehalt NUMBER(7,2) NOT NULL
);


-------------------------------
--  DDL table for Abteilung
-------------------------------
CREATE TABLE Abteilung(
	AbteilungsID NUMBER NOT NULL,
	Beschreibung VARCHAR2(255) NOT NULL
);


-------------------------------
--  DDL table for Person
-------------------------------

CREATE TABLE Person(
	PersonID NUMBER NOT NULL,
	Vorname VARCHAR2(255) NOT NULL,
	Nachname VARCHAR2(255) NOT NULL,	
	SVN NUMBER NOT NULL,
	Geburtsdatum DATE,
	AdressID NUMBER NOT NULL,
	Email VARCHAR2(255) NOT NULL,
	Telefon VARCHAR2(255) NOT NULL
);


-------------------------------------
--  DDL table for Bankinformation
-------------------------------------
CREATE TABLE Bankinformation(
	KontoID NUMBER NOT NULL,
	KontoNr NUMBER NOT NULL,
	IBAN VARCHAR2(255) NOT NULL,
	Bankname VARCHAR2(255) NOT NULL,	
	AdressID NUMBER NOT NULL
);


-------------------------------------
--  DDL table for Personal
-------------------------------------
CREATE TABLE Personal(
	PersonID NUMBER NOT NULL,	
	GehaltsstufeID NUMBER NOT NULL,	
	KontoID NUMBER NOT NULL,	
	AbteilungsID NUMBER NOT NULL
);

-------------------------------------
--  DDL table for ehemalige Mitarbeiter
-------------------------------------
CREATE TABLE EhemaligeMitarbeiter(
        PersonID NUMBER PRIMARY KEY,	
	GehaltsstufeID NUMBER NOT NULL,	
	KontoID NUMBER NOT NULL,	
	AbteilungsID NUMBER NOT NULL,
	Austrittsdatum DATE NOT NULL
);

-------------------------------------
--  DDL table for Gast
-------------------------------------
CREATE TABLE Gast(
	PersonID NUMBER NOT NULL,	
	ReisepassID VARCHAR(20) NOT NULL,	
	KontoID NUMBER NOT NULL
);


-------------------------------------
--  DDL table for Lieferanten
-------------------------------------
CREATE TABLE Lieferanten(
	LieferantenID NUMBER NOT NULL,	
	Lieferantenname VARCHAR2(255) NOT NULL,	
	AdressID NUMBER NOT NULL,	
	KontoID NUMBER NOT NULL
);


-------------------------------------
--  DDL table for Rechnung
-------------------------------------
CREATE TABLE Rechnung(
	RechnungsID NUMBER NOT NULL,	
	RechnungsSumme NUMBER(7,2) NOT NULL,	
	Ausstellungsdatum DATE NOT NULL,	
	EmpfaengerKontoID NUMBER NOT NULL,
	AusstellerKontoID NUMBER NOT NULL		
);


-------------------------------------
--  DDL table for Bestellung
-------------------------------------
CREATE TABLE Bestellung(
	BestellungsID NUMBER NOT NULL,	
	LieferantenID NUMBER NOT NULL,	
	AdressID NUMBER NOT NULL,		
  RechnungsID NUMBER NOT NULL
);


-------------------------------------
--  DDL table for Zimmerbuchung
-------------------------------------
CREATE TABLE Zimmerbuchung(
	BuchungsID NUMBER NOT NULL,	
	Buchungsdatum DATE NOT NULL,	
	PersonID NUMBER NOT NULL,		
  RechnungsID NUMBER NOT NULL,
  Buchungspreis NUMBER(7,2) NOT NULL	
);


-------------------------------------
--  DDL table for Bestelldetails
-------------------------------------
CREATE TABLE Bestelldetails(
	BestellungsID NUMBER NOT NULL,	
	WarenID NUMBER NOT NULL,	
	Anzahl NUMBER NOT NULL,		
  Preis NUMBER(7,2) NOT NULL	
);



-------------------------------------
--  DDL table for Servicedetails
-------------------------------------
CREATE TABLE Servicedetails(
	BuchungsID NUMBER NOT NULL,	
	ServiceID NUMBER NOT NULL,	
	Anzahl NUMBER NOT NULL,		
  Preis NUMBER(7,2) NOT NULL	
);



-------------------------------------
--  DDL table for Zimmerbuchungsdetails
-------------------------------------
CREATE TABLE Zimmerbuchungsdetails(
	ZimmerNr NUMBER NOT NULL,	
	BuchungsID NUMBER NOT NULL,
	CheckIn DATE NOT NULL,
	CheckOut DATE NOT NULL,
	DauerTagen NUMBER NOT NULL, 
	Anzahl NUMBER NOT NULL,		
  Preis NUMBER(7,2) NOT NULL	
);


-------------------------------------
--  DDL table for Kundenbewertung
-------------------------------------
CREATE TABLE Kundenbewertung(
	PersonID NUMBER NOT NULL,	
	BewertungsID NUMBER NOT NULL, 
	Bewertungskommentar VARCHAR2(250) NOT NULL,			
  	BuchungsID NUMBER NOT NULL,
	Bewertung NUMBER NOT NULL
);


-- CHECK for table-creation ("are all tables there?")
SELECT table_name FROM user_tables; 




------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
--------------------------------- ALTER TABLES/ INDEXES / CONSTRAINS ------------------------------------------- 
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040324
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012345" ON "WARENART" ("WARENARTID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040322
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012346" ON "WARE" ("WARENID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040344
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0912347" ON "ADRESSE" ("ADRESSID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040360
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012348" ON "SERVICE" ("SERVICEID") 
  ;

--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040346
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012350" ON "ZIMMER" ("ZIMMERNR") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040326
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012351" ON "LAND" ("LANDID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040319
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012352" ON "REISEPASS" ("REISEPASSID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040332
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012353" ON "GEHALTSSTUFE" ("GEHALTSSTUFEID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040328
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012354" ON "ABTEILUNG" ("ABTEILUNGSID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040363
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012355" ON "PERSON" ("PERSONID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040316
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012356" ON "BANKINFORMATION" ("KONTOID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040352
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012357" ON "PERSONAL" ("PERSONID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040354
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012358" ON "GAST" ("PERSONID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040314
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012359" ON "LIEFERANTEN" ("LIEFERANTENID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040341
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012360" ON "RECHNUNG" ("RECHNUNGSID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040307
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012361" ON "BESTELLUNG" ("BESTELLUNGSID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040311
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012362" ON "ZIMMERBUCHUNG" ("BUCHUNGSID") 
  ;
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040358
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012363" ON "BESTELLDETAILS" ("BESTELLUNGSID", "WARENID") 
  ;

--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040358
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012364" ON "SERVICEDETAILS" ("BUCHUNGSID", "SERVICEID") 
  ;

--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040358
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012365" ON "ZIMMERBUCHUNGSDETAILS" ("ZIMMERNR", "BUCHUNGSID") 
  ;

--------------------------------------------------------
--  DDL FOR INDEX SYS_C0040358
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012366" ON "KUNDENBEWERTUNG" ("BEWERTUNGSID") 
  ;
  
--------------------------------------------------------
--  DDL FOR INDEX SYS_C0012367
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012367" ON "EHEMALIGEMITARBEITER" ("PERSONID") 
  ;




--------------------------------------------------------
--  CONSTRAINTS FOR TABLE WARENART
--------------------------------------------------------
   ALTER TABLE "WARENART" ADD PRIMARY KEY ("WARENARTID") ENABLE;

--------------------------------------------------------
--  CONSTRAINTS FOR TABLE WAREN
--------------------------------------------------------
   ALTER TABLE "WARE" ADD PRIMARY KEY ("WARENID") ENABLE;

--------------------------------------------------------
--  CONSTRAINTS FOR TABLE ADRESSE
--------------------------------------------------------
   ALTER TABLE "ADRESSE" ADD PRIMARY KEY ("ADRESSID") ENABLE;

--------------------------------------------------------
--  CONSTRAINTS FOR TABLE SERVICE 
--------------------------------------------------------
   ALTER TABLE "SERVICE" ADD PRIMARY KEY ("SERVICEID") ENABLE;

--------------------------------------------------------
--  CONSTRAINTS FOR TABLE ZIMMER 
--------------------------------------------------------
   ALTER TABLE "ZIMMER" ADD PRIMARY KEY ("ZIMMERNR") ENABLE;

--------------------------------------------------------
--  CONSTRAINTS FOR TABLE LAND  
--------------------------------------------------------
   ALTER TABLE "LAND" ADD PRIMARY KEY ("LANDID") ENABLE;

--------------------------------------------------------
--  CONSTRAINTS FOR TABLE REISEPASS  
--------------------------------------------------------
   ALTER TABLE "REISEPASS" ADD PRIMARY KEY ("REISEPASSID") ENABLE;

--------------------------------------------------------
--  CONSTRAINTS FOR TABLE GEHALTSSTUFE  
--------------------------------------------------------
   ALTER TABLE "GEHALTSSTUFE" ADD PRIMARY KEY ("GEHALTSSTUFEID") ENABLE;

--------------------------------------------------------
--  CONSTRAINTS FOR TABLE ABTEILUNG  
--------------------------------------------------------
   ALTER TABLE "ABTEILUNG" ADD PRIMARY KEY ("ABTEILUNGSID") ENABLE;

--------------------------------------------------------
--  CONSTRAINTS FOR TABLE PERSON  
--------------------------------------------------------
   ALTER TABLE "PERSON" ADD PRIMARY KEY ("PERSONID") ENABLE;

--------------------------------------------------------
--  CONSTRAINTS FOR TABLE BANKINFORMATION  
--------------------------------------------------------
   ALTER TABLE "BANKINFORMATION" ADD PRIMARY KEY ("KONTOID") ENABLE;


--------------------------------------------------------
--  CONSTRAINTS FOR TABLE PERSONAL   
--------------------------------------------------------
   ALTER TABLE "PERSONAL" ADD PRIMARY KEY ("PERSONID") ENABLE;


--------------------------------------------------------
--  CONSTRAINTS FOR TABLE GAST   
--------------------------------------------------------
   ALTER TABLE "GAST" ADD PRIMARY KEY ("PERSONID") ENABLE;


--------------------------------------------------------
--  CONSTRAINTS FOR TABLE LIEFERANTEN   
--------------------------------------------------------
   ALTER TABLE "LIEFERANTEN" ADD PRIMARY KEY ("LIEFERANTENID") ENABLE;


--------------------------------------------------------
--  CONSTRAINTS FOR TABLE RECHNUNG    
--------------------------------------------------------
   ALTER TABLE "RECHNUNG" ADD PRIMARY KEY ("RECHNUNGSID") ENABLE;


--------------------------------------------------------
--  CONSTRAINTS FOR TABLE BESTELLUNG    
--------------------------------------------------------
   ALTER TABLE "BESTELLUNG" ADD PRIMARY KEY ("BESTELLUNGSID") ENABLE;


--------------------------------------------------------
--  CONSTRAINTS FOR TABLE ZIMMERBUCHUNG   
--------------------------------------------------------
   ALTER TABLE "ZIMMERBUCHUNG" ADD PRIMARY KEY ("BUCHUNGSID") ENABLE;


--------------------------------------------------------
--  CONSTRAINTS FOR TABLE BESTELLDETAILS   
--------------------------------------------------------
   ALTER TABLE "BESTELLDETAILS" ADD PRIMARY KEY ("BESTELLUNGSID", "WARENID") ENABLE;


--------------------------------------------------------
--  CONSTRAINTS FOR TABLE SERVICEDETAILS    
--------------------------------------------------------
   ALTER TABLE "SERVICEDETAILS" ADD PRIMARY KEY ("SERVICEID", "BUCHUNGSID") ENABLE;


--------------------------------------------------------
--  CONSTRAINTS FOR TABLE ZIMMERBUCHUNGSDETAILS    
--------------------------------------------------------
   ALTER TABLE "ZIMMERBUCHUNGSDETAILS" ADD PRIMARY KEY ("BUCHUNGSID", "ZIMMERNR") ENABLE;


--------------------------------------------------------
--  CONSTRAINTS FOR TABLE KUNDENBEWERTUNG     
--------------------------------------------------------
   ALTER TABLE "KUNDENBEWERTUNG" ADD PRIMARY KEY ("BEWERTUNGSID") ENABLE;


--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE WARE
--------------------------------------------------------

  ALTER TABLE "WARE" ADD FOREIGN KEY ("WARENARTID")
	  REFERENCES "WARENART" ("WARENARTID") ENABLE;

--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE PERSON
--------------------------------------------------------

  ALTER TABLE "PERSON" ADD FOREIGN KEY ("ADRESSID")
	  REFERENCES "ADRESSE" ("ADRESSID") ENABLE;


--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE RESIEPASS
--------------------------------------------------------

  ALTER TABLE "REISEPASS" ADD FOREIGN KEY ("LANDID")
	  REFERENCES "LAND" ("LANDID") ENABLE;
 
 
--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE PERSONAL 
--------------------------------------------------------

  ALTER TABLE "PERSONAL" ADD FOREIGN KEY ("PERSONID")
	  REFERENCES "PERSON" ("PERSONID") ENABLE;
 
  ALTER TABLE "PERSONAL" ADD FOREIGN KEY ("ABTEILUNGSID")
	  REFERENCES "ABTEILUNG" ("ABTEILUNGSID") ENABLE;

  ALTER TABLE "PERSONAL" ADD FOREIGN KEY ("KONTOID")
	  REFERENCES "BANKINFORMATION" ("KONTOID") ENABLE;
 
 ALTER TABLE "PERSONAL" ADD FOREIGN KEY ("GEHALTSSTUFEID")
	  REFERENCES "GEHALTSSTUFE" ("GEHALTSSTUFEID") ENABLE;

--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE GAST  
--------------------------------------------------------

  ALTER TABLE "GAST" ADD FOREIGN KEY ("PERSONID")
	  REFERENCES "PERSON" ("PERSONID") ENABLE;
 
  ALTER TABLE "GAST" ADD FOREIGN KEY ("REISEPASSID")
	  REFERENCES "REISEPASS" ("REISEPASSID") ENABLE;

  ALTER TABLE "GAST" ADD FOREIGN KEY ("KONTOID")
	  REFERENCES "BANKINFORMATION" ("KONTOID") ENABLE;


--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE LIEFERANTEN  
--------------------------------------------------------

  ALTER TABLE "LIEFERANTEN" ADD FOREIGN KEY ("ADRESSID")
	  REFERENCES "ADRESSE" ("ADRESSID") ENABLE;

  ALTER TABLE "LIEFERANTEN" ADD FOREIGN KEY ("KONTOID")
	  REFERENCES "BANKINFORMATION" ("KONTOID") ENABLE;


--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE RECHNUNG  
--------------------------------------------------------

  ALTER TABLE "RECHNUNG" ADD FOREIGN KEY ("AUSSTELLERKONTOID")
	  REFERENCES "BANKINFORMATION" ("KONTOID") ENABLE;

  ALTER TABLE "RECHNUNG" ADD FOREIGN KEY ("EMPFAENGERKONTOID")
	  REFERENCES "BANKINFORMATION" ("KONTOID") ENABLE;


--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE BESTELLUNG   
--------------------------------------------------------

  ALTER TABLE "BESTELLUNG" ADD FOREIGN KEY ("LIEFERANTENID")
	  REFERENCES "LIEFERANTEN" ("LIEFERANTENID") ENABLE;
 
  ALTER TABLE "BESTELLUNG" ADD FOREIGN KEY ("ADRESSID")
	  REFERENCES "ADRESSE" ("ADRESSID") ENABLE;
 
  ALTER TABLE "BESTELLUNG" ADD FOREIGN KEY ("RECHNUNGSID")
	  REFERENCES "RECHNUNG" ("RECHNUNGSID") ENABLE;


--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE BESTELLDETAILS     
--------------------------------------------------------

  ALTER TABLE "BESTELLDETAILS" ADD FOREIGN KEY ("BESTELLUNGSID")
	  REFERENCES "BESTELLUNG" ("BESTELLUNGSID") ENABLE;
 
  ALTER TABLE "BESTELLDETAILS" ADD FOREIGN KEY ("WARENID")
	  REFERENCES "WARE" ("WARENID") ENABLE;
	  
	  

--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE SERVICEDETAILS      
--------------------------------------------------------

  ALTER TABLE "SERVICEDETAILS" ADD FOREIGN KEY ("BUCHUNGSID")
	  REFERENCES "ZIMMERBUCHUNG" ("BUCHUNGSID") ENABLE;
 
  ALTER TABLE "SERVICEDETAILS" ADD FOREIGN KEY ("SERVICEID")
	  REFERENCES "SERVICE" ("SERVICEID") ENABLE;
	  

--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE ZIMMERBUCHUNGSDETAILS     
--------------------------------------------------------

  ALTER TABLE "ZIMMERBUCHUNGSDETAILS" ADD FOREIGN KEY ("ZIMMERNR")
	  REFERENCES "ZIMMER" ("ZIMMERNR") ENABLE;
 
  ALTER TABLE "ZIMMERBUCHUNGSDETAILS" ADD FOREIGN KEY ("BUCHUNGSID")
	  REFERENCES "ZIMMERBUCHUNG" ("BUCHUNGSID") ENABLE;
	  

--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE KUNDENBEWERTUNG     
--------------------------------------------------------

  ALTER TABLE "KUNDENBEWERTUNG" ADD FOREIGN KEY ("PERSONID")
	  REFERENCES "PERSON" ("PERSONID") ENABLE;
 
  ALTER TABLE "KUNDENBEWERTUNG" ADD FOREIGN KEY ("BUCHUNGSID")
	  REFERENCES "ZIMMERBUCHUNG" ("BUCHUNGSID") ENABLE;
	  
--------------------------------------------------------
--  REF CONSTRAINTS FOR TABLE EHEMALIGEMITARBEITER  
--------------------------------------------------------

  ALTER TABLE "EHEMALIGEMITARBEITER  " ADD FOREIGN KEY ("GEHALTSSTUFEID")
	  REFERENCES "GEHALTSSTUFE" ("GEHALTSSTUFEID") ENABLE;

  ALTER TABLE "EHEMALIGEMITARBEITER  " ADD FOREIGN KEY ("KONTOID")
	  REFERENCES "BANKINFORMATION" ("KONTOID") ENABLE;

 ALTER TABLE "EHEMALIGEMITARBEITER  " ADD FOREIGN KEY ("ABTEILUNGSID")
	  REFERENCES "ABTEILUNG" ("ABTEILUNGSID") ENABLE;  

ALTER TABLE "EHEMALIGEMITARBEITER" ADD FOREIGN KEY ("PERSONID")
	  REFERENCES "PERSON" ("PERSONID") ENABLE;


---------------------------------------------------------
---- SEQUENCES --------------------------------------------
----------------------------------------------------------
CREATE SEQUENCE personid_seq START WITH 1;
CREATE SEQUENCE adressid_seq START WITH 1;
