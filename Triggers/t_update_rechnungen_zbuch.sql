/*
Trigger: t_update_rechnungen_zbuch
Type: After Update
Type Extension: update
Developer: Group 3
Description: Dieser Trigger aktualisiert den Rechnungspreis einer Rechnung immer, wenn der Bestellpreis einer Bestellung aus aktualisiert/geändert wird.
*/


SET serveroutput on;
/
CREATE OR REPLACE TRIGGER t_update_rechnungen_zbuch
  AFTER UPDATE ON Zimmerbuchung
  FOR EACH ROW

BEGIN
  
  
  UPDATE Rechnung
  SET Rechnungssumme = :new.Buchungspreis
  WHERE RechnungsID = :new.RechnungsID;
  
  DBMS_OUTPUT.put_line('Update in Rechnung auch erfolgreich durchgeführt!');
  dbms_output.new_line;

END;
/


--------------------------
---- Trigger ausprobieren
--------------------------
UPDATE Zimmerbuchung SET Buchungspreis = 100 WHERE BuchungsID = 1;
SELECT * FROM Rechnung WHERE RechnungsID = 209;




