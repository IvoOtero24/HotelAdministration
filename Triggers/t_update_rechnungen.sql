/*
Trigger: t_update_rechnungen
Type: After row
Type Extension: update
Developer: Group 3
Description: After an update on Buchungsprice in the table Zimmerbuchung, then the Rechnungssumme in Rechnung will be updated.
*/


SET serveroutput on;
/
CREATE OR REPLACE TRIGGER t_update_rechnungen
  AFTER UPDATE ON Zimmerbuchung
  FOR EACH ROW

BEGIN
  
  -- check for person having already 2 bags
  UPDATE Rechnung
  SET Rechnungssumme = :new.Buchungspreis
  WHERE RechnungsID = :new.RechnungsID;
  
  DBMS_OUTPUT.put_line('Update in Rehcnung auch erfolgreich durchgeführt!');

END;
/

UPDATE Zimmerbuchung SET Buchungspreis = 100 WHERE BuchungsID = 1;
SELECT * FROM Rechnung WHERE RechnungsID = 204;




