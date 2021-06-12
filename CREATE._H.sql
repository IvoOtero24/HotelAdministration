select * from dba_users where username='HOTEL_ADMIN';

create tablespace hotel 
	datafile '\/usr/lib/oracle/xe/oradata/XE/hotel_admin.dbf' 
	size 10 M 
	autoextend on;
	
alter user hotel_admin default tablespace hotel;

select * from USER_TABLESPACES;

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
	HausNr INT NOT NULL,
	TuerNr INT,
	PLZ INT NOT NULL,
	Ort VARCHAR2(50) NOT NULL, 
	Land VARCHAR2(50) NOT NULL	
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
--  DDL table for Zimmerklasse
-------------------------------
CREATE TABLE Zimmerklasse(
	KlassenID NUMBER NOT NULL,
	Beschreibung VARCHAR2(225) NOT NULL
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
	ReisepassID NUMBER NOT NULL,
	LandID NUMBER NOT NULL
);


-------------------------------
--  DDL table for Gehaltsstufe
-------------------------------
CREATE TABLE Gehaltsstufe(
	GehaltsstufeID NUMBER NOT NULL,
	Gehalt NUMBER(7,2) NOT NULL
);


-------------------------------
--  DDL table for Abteilung
-------------------------------
CREATE TABLE Abteilung(
	AbteilungsID NUMBER NOT NULL,
	Beschreibung VARCHAR2(255) NOT NULL,
	Leiter VARCHAR2(255) NOT NULL
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
	AdressID NUMBER NOT NULL
);


-------------------------------------
--  DDL table for Bankinformation
-------------------------------------
CREATE TABLE Bankinformation(
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
	KontoNr NUMBER NOT NULL,	
	AbteilungsID NUMBER NOT NULL
);


-------------------------------------
--  DDL table for Gast
-------------------------------------
CREATE TABLE Gast(
	PersonID NUMBER NOT NULL,	
	ReisepassID NUMBER NOT NULL,	
	KontoNr NUMBER NOT NULL
);


-------------------------------------
--  DDL table for Lieferanten
-------------------------------------
CREATE TABLE Lieferanten(
	LieferantenID NUMBER NOT NULL,	
	Lieferantenname VARCHAR2(255) NOT NULL,	
	AdresseID NUMBER NOT NULL,	
	KontoNr NUMBER NOT NULL
);


-------------------------------------
--  DDL table for Rechnung
-------------------------------------
CREATE TABLE Rechnung(
	RechnungsID NUMBER NOT NULL,	
	RechnungsSumme NUMBER(7,2) NOT NULL,	
	Ausstellungsdatum DATE NOT NULL,	
	Austeller VARCHAR2(255) NOT NULL,	
	AustellerKontoNr VARCHAR2(255) NOT NULL,
	Empfaenger VARCHAR2(255) NOT NULL,
	EmpfaengerKontoNr VARCHAR2(255) NOT NULL		
);


-------------------------------------
--  DDL table for Bestellung
-------------------------------------
CREATE TABLE Bestellung(
	BestellungsID NUMBER NOT NULL,	
	LieferantenID NUMBER NOT NULL,	
	AdressID NUMBER NOT NULL,		
  RechnungsID NUMBER NOT NULL,
  Buchungspreis NUMBER(7,2) NOT NULL	
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
  BuchungsID NUMBER NOT NULL	
);

-- CHECK for table-creation ("are all tables there?")
SELECT table_name FROM user_tables;
