/*
Trigger: t_update_rechnungen_best
Type: After row
Type Extension: update
Developer: Group 3
Description: After an update on Preis in the table Bestelldetails, then the Rechnungssumme in Rechnung will be updated.
*/


SET serveroutput on;
/
CREATE OR REPLACE TRIGGER t_update_rechnungen_best
  AFTER UPDATE ON Bestelldetails
  FOR EACH ROW

BEGIN
  
  UPDATE Rechnung
  SET Rechnungssumme = :new.Preis
  WHERE RechnungsID = (SELECT RechnungsID
  FROM Bestellung 
  WHERE BestellungsID = :new.BestellungsID);
  
  DBMS_OUTPUT.put_line('Update in Rehcnung auch erfolgreich durchgeführt!');

END;
/

--------------------------
---- Trigger ausprobieren
--------------------------
UPDATE Bestelldetails SET Preis = 50 WHERE BestellungsID = 301;
SELECT * FROM BESTELLDETAILS;
SELECT * FROM BESTELLUNG WHERE BESTELLUNGSID = 301;
SELECT * FROM RECHNUNG WHERE RECHNUNGSID = 200;
