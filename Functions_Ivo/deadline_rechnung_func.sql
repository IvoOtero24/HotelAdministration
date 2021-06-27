-------------------------------
--Function 1: Deadline-Rechnung
-------------------------------

CREATE OR REPLACE TYPE DeadlineTableObject AS OBJECT
(
  Rechnungssumme NUMBER(7,2),
  Datum DATE,
  AusstellerID NUMBER,
  EmpfaengerID NUMBER
);
/

--Create a type of your object 
CREATE OR REPLACE TYPE DeadlineTable AS TABLE OF DeadlineTableObject;
/


-- Function 
CREATE OR REPLACE Function DeadlineRechnung
  (selected_date IN DATE)
  RETURN DeadlineTable
  PIPELINED
AS 
  CURSOR return_cursor
  IS
    SELECT Rechnungssumme, Ausstellungsdatum, AusstellerkontoID, EmpfaengerkontoID
    FROM Rechnung
    WHERE Ausstellungsdatum = selected_date
    AND AusstellerKontoID = 500;
    
  BEGIN
    FOR i IN return_cursor
    LOOP
      PIPE ROW (DeadlineTableObject(i.Rechnungssumme, i.Ausstellungsdatum, i.AusstellerkontoID, i.EmpfaengerkontoID));
      EXIT WHEN return_cursor%NOTFOUND;
      
      END LOOP; 
      
    RETURN;
  END;
  
/


SELECT * FROM TABLE(DeadlineRechnung(to_date('22.06.2021','DD.MM.YYYY')));

      


