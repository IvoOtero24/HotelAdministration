SET serveroutput ON;

--Create procedure to print all customer feedbacks which are lower than 5; (scale from 1 to 10)
CREATE OR REPLACE PROCEDURE check_kundenberwertung
AS
    v_count NUMBER;
    CURSOR bewertung_cur    
  IS
    SELECT vorname, nachname, Buchungsdatum, ZimmerArt,ZimmerNr, Bewertungskommentar, Bewertung
    FROM Kundenbewertung
    INNER JOIN Person USING (PersonID)
    INNER JOIN Zimmerbuchung USING (BuchungsID)
    INNER JOIN Zimmerbuchungsdetails USING (BuchungsID)
    INNER JOIN Zimmer ON Zimmerbuchungsdetails.ZimmerNr = Zimmer.ZimmerNr
    WHERE Bewertung <5;

BEGIN
  v_count:=0;
	FOR cur_record in bewertung_cur
	LOOP
	  DBMS_OUTPUT.PUT_LINE('VORNAME: ' ||cur_record.vorname ||' NACHNAME: '|| cur_record.nachname ||' BUCHUNGSDATUM: '|| cur_record.buchungsdatum || ' ZIMMERART: '||
		cur_record.zimmerart|| ' ZIMMERNR: '||cur_record.zimmerNr||' KOMMENTAR: '||cur_record.bewertungskommentar||' BEWERTUNG: '|| cur_record.bewertung );
	  v_count:= v_count+1;
  END LOOP;
 IF v_count= 0 THEN
  DBMS_OUTPUT.PUT_LINE('Keine Bewertungen unter 5 Sterne.');
  END IF;
  
END;
/

-------------------
-- execute procedure
-------------------
EXEC check_kundenberwertung;
/
