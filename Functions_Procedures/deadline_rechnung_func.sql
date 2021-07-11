-------------------------------
--Function 1: Deadline-Rechnung
-------------------------------
CREATE OR REPLACE TYPE DeadlineTableObj AS OBJECT
(
  RechnungsID VARCHAR(50),
  Rechnungssumme NUMBER(7,2),
  Datum DATE,
  AusstellerID NUMBER,
  EmpfaengerID NUMBER
);
/

--Create a type of your object 
CREATE OR REPLACE TYPE DeadlineTable AS TABLE OF DeadlineTableObj;
/


-- Function 
CREATE OR REPLACE Function DeadlineRechnung
  RETURN DeadlineTable
  PIPELINED
AS 
  CURSOR return_cursor
  IS
    SELECT RechnungsID, Rechnungssumme, Ausstellungsdatum, AusstellerkontoID, EmpfaengerkontoID
    FROM Rechnung
    WHERE (sysdate - Ausstellungsdatum) > 15
    AND EmpfaengerKontoID = 500;
    
  BEGIN
    FOR i IN return_cursor
    LOOP
      PIPE ROW (DeadlineTableObj(i.RechnungsID, i.Rechnungssumme, i.Ausstellungsdatum, i.AusstellerkontoID, i.EmpfaengerkontoID));
      EXIT WHEN return_cursor%NOTFOUND;
      
      END LOOP; 
      
    RETURN;
  END;
  
/


SELECT * FROM TABLE(DeadlineRechnung);

SELECT * FROM Rechnung;

      


