/*********************************************************************
/**
/** Function: f_deadline_rechnung_o
/** In: no input 
/** Returns: a table containing all rechnungen, which must be paid in the next 3 weeks
/** Developer: TCSDeveloper
/** Description: The function searches for Rechnungen, which must be paid in the next days or are already  (payment due date to suppliers is 20 Days)
/**
/*********************************************************************/


-- set up for return object
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
CREATE OR REPLACE Function f_deadline_rechnung_o
  RETURN DeadlineTable
  PIPELINED
AS 
  CURSOR return_cursor
  IS
    SELECT RechnungsID, Rechnungssumme, Ausstellungsdatum, AusstellerkontoID, EmpfaengerkontoID
    FROM Rechnung
    WHERE (Ausstellungsdatum + 20) > (sysdate)
    AND (Ausstellungsdatum + 20) < (sysdate + 21)
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



-------------------
-- execute procedure
-------------------
SELECT * FROM TABLE(f_deadline_rechnung_o);
SELECT * FROM Rechnung;

      


