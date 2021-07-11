CREATE OR REPLACE FUNCTION zimmer_abv_check
  (user_zimmer IN NUMBER,
   user_buchungsdatum IN DATE,
   Dauertagen IN NUMBER,
   Preis IN NUMBER)

  RETURN VARCHAR2
  AS ErrorMessage VARCHAR2(50);
  
  PRAGMA AUTONOMOUS_TRANSACTION;

  i NUMBER;
  
BEGIN
  -- checking for abvailability
  SELECT COUNT(*)
  INTO i FROM Zimmerbuchungsdetails 
  INNER JOIN Zimmerbuchung USING (BuchungsID)
  WHERE Zimmerbuchungsdetails.ZIMMERNR = user_zimmer
  AND Zimmerbuchung.BUCHUNGSDATUM = user_buchungsdatum;
  
  -- to do after check with "i"
  IF (i > 0) THEN
    ErrorMessage := 'Error';
    dbms_output.put_line(ErrorMessage);
    RETURN(ErrorMessage);
  ELSE
    INSERT INTO Zimmerbuchung(BUCHUNGSID, BUCHUNGSDATUM, PERSONID, RECHNUNGSID, BUCHUNGSPREIS)  VALUES (23, user_buchungsdatum, Dauertagen, 1, Preis);
    INSERT INTO Zimmerbuchungsdetails(ZIMMERNR, BUCHUNGSID, DAUERTAGEN, ANZAHL, PREIS) VALUES (user_zimmer, 23, Dauertagen, 1, Preis);
    COMMIT;
    RETURN('Your booking was succesful!');
  END IF;
  
END;
/


SELECT zimmer_abv_check(1, sysdate, 2, 100) FROM dual;

SELECT * FROM Zimmerbuchung;

