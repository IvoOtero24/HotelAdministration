/************************************
Function: f_check_beste_kunden_o
In: no input parameter
 Returns: ein Tabellenobjekt mit den 10 "treuesten"
              Kunde (diejenigen, die am meisten bezahlt haben)
Developer: Group3
Description: Ziel diese Prozedur ist es, die PersonID, Vornamen, Nachnamen, Austellungsdatum, 
 und Rechnungssumme des 10 besten Kunden mit der höchsten Rechnungssumme
 in der letzten Periode zu ermitteln.
**************************************/


CREATE OR REPLACE TYPE BesteKundenObj AS OBJECT
(
  PersonID NUMBER,
  Vorname VARCHAR2(50),
  Nachname VARCHAR2(50),
  GebDatum DATE,
  Nationalitaet VARCHAR2(25)
);
/

--Create a type of your object 
CREATE OR REPLACE TYPE BesteKundenTable AS TABLE OF BesteKundenObj;
/


CREATE OR REPLACE FUNCTION f_check_beste_kunden_o
  RETURN BesteKundenTable
  PIPELINED
AS
    CURSOR best_kunden_cur   
  IS
    SELECT * FROM (
    SELECT Person.PersonID,Person.Vorname, Person.Nachname,Person.Geburtsdatum, Land.Landname
    FROM Rechnung 
    JOIN Gast ON Gast.KontoID = Rechnung.EmpfaengerkontoID
    JOIN Person ON Gast.PersonID = Person.PersonID
    JOIN Reisepass USING (ReisepassID)
    JOIN Land USING (LandID)
    WHERE AusstellerkontoID = 500
    ORDER BY RechnungsSumme DESC, Ausstellungsdatum DESC) WHERE ROWNUM <11;

BEGIN
	FOR cur_record in best_kunden_cur
	LOOP
	   PIPE ROW (BesteKundenObj(cur_record.PersonID, cur_record.Vorname, cur_record.Nachname, cur_record.Geburtsdatum, cur_record.Landname));
     EXIT WHEN best_kunden_cur%NOTFOUND;
  END LOOP;
  RETURN;
END;
/



-------------------
-- execute procedure
-------------------
SELECT * FROM TABLE (sp_check_beste_kunden);
