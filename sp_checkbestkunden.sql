SET serveroutput ON;

--Create procedure to print the list of 10 customers who pay most.
CREATE OR REPLACE PROCEDURE check_best_kunden
AS
    CURSOR best_kunden_cur   
  IS
    SELECT * FROM (
    SELECT PersonID,Vorname, Nachname,RechnungsSumme, Ausstellungsdatum
    FROM Rechnung
    JOIN Gast ON Gast.KontoID = Rechnung.EmpfaengerkontoID
    JOIN Person using (PersonID)
    WHERE AusstellerkontoID = 500
    order by RechnungsSumme DESC, Ausstellungsdatum DESC) where rownum <11;

BEGIN
	FOR cur_record in best_kunden_cur
	LOOP
	  DBMS_OUTPUT.PUT_LINE('PersonID: ' ||cur_record.PersonID ||'VORNAME: ' ||cur_record.vorname ||' NACHNAME: '|| cur_record.nachname || ' AUSSTELLUNGSDATUM: '||
		cur_record.Ausstellungsdatum ||' RECHNUNGSSUMME: '|| cur_record.RechnungsSumme  );
  END LOOP;
  
END;
/

-------------------
-- execute procedure
-------------------
EXEC check_best_kunden;
/

