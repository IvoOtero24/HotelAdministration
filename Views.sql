/*********************************************************************
/**
/** Table: PersonalOverview
/** Developer: Group 3
/** Description: Grundsätzliche Informationen der Mitarbeiter 
/**
/*********************************************************************/

CREATE OR REPLACE VIEW PersonalOverview AS 
SELECT Person.vorname, Person.nachname, Adresse.Strasse || ' , ' || Adresse.HausNr as Adresse, Abteilung.Beschreibung AS Abteilung, Gehaltsstufe.Monatsgehalt, Kontoid
FROM Personal
INNER JOIN Person USING (PersonID)
INNER JOIN Gehaltsstufe USING (GehaltsstufeID)
INNER JOIN Abteilung USING (AbteilungsID) 
INNER JOIN Adresse USING (AdressID);

/*********************************************************************
/**
/** Table: BestellungenOverview
/** Developer: Group 3
/** Description: Überblick dafür, welche und wie viele Produkte das Hotel mit welchem Preis wann von wem gekauft hat
/**
/*********************************************************************/

CREATE OR REPLACE VIEW BestellungenOverview AS
SELECT Ware.WarenName AS Ware, WarenArt.WarenArtName as Waren_Art, Bestelldetails.Anzahl, Bestelldetails.Preis, Rechnung.Ausstellungsdatum, 
Lieferanten.Lieferantenname AS Lieferant_Name, Lieferanten.KontoID 
FROM Bestellung
INNER JOIN Bestelldetails USING (BestellungsID)
INNER JOIN Ware USING (WarenID)
INNER JOIN WarenArt USING (WarenArtID)
INNER JOIN Lieferanten USING (LieferantenID)
INNER JOIN Rechnung USING (RechnungsID);

/*********************************************************************
/**
/** Table: GastOverview
/** Developer: Group 3
/** Description: Wer aus welchem Land hat wie viele Buchungen bei dem Hotel gemacht.
/**
/*********************************************************************/

CREATE OR REPLACE VIEW GastOverview AS
SELECT Person.vorname, Person.nachname, Adresse.Ort, Land.Landname, ReisepassID, COUNT(*) as Anzahl
FROM Zimmerbuchung
INNER JOIN Person USING (PersonID)
INNER JOIN Gast USING (PersonID)
INNER JOIN Adresse USING (AdressID)
INNER JOIN Land USING (LandID)
GROUP BY PersonID, Person.vorname, Person.nachname, Adresse.Ort, Land.Landname, ReisepassID;

/*********************************************************************
/**
/** Table: BewertungenOverview
/** Developer: Group 3
/** Description: Grundinformationen für die Bewertungen
/**
/*********************************************************************/

CREATE OR REPLACE VIEW BewertungenOverview AS
SELECT Person.vorname, Person.nachname, Zimmerbuchung.Buchungsdatum, Zimmer.ZimmerArt, Zimmer.ZimmerNr as Zimmer_NR, Bewertungskommentar , Bewertung
FROM Kundenbewertung
INNER JOIN Person USING (PersonID)
INNER JOIN Zimmerbuchung USING (BuchungsID)
INNER JOIN Zimmerbuchungsdetails USING (BuchungsID)
INNER JOIN Zimmer ON Zimmerbuchungsdetails.ZimmerNr = Zimmer.ZimmerNr;
