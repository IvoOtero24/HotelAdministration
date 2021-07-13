/*********************************************************************
/**
/** Function: f_zimmer_abv_check_v
/** In: user_zimmer IN NUMBER, user_buchungsdatum IN DATE, Dauertagen IN NUMBER, Preis IN NUMBER
/** Returns: einem Kommentar über den Status: ou_message_to_user VARCHAR2(225)
/** Developer: Gruppe 3
/** Description: Der Zweck dieser Function ist zu prüfen, ob dieser Raum noch verfügbar ist.
/**
/*********************************************************************/


CREATE OR REPLACE FUNCTION f_zimmer_abv_check_v
  (in_zimmer IN NUMBER,
   in_buchungsdatum IN DATE,
   in_checkIn IN DATE,
   in_checkOut IN DATE,
   in_preis IN NUMBER)

  RETURN VARCHAR2
  AS ou_message_to_user VARCHAR2(225);
  
  PRAGMA AUTONOMOUS_TRANSACTION;
  i NUMBER;
  x_room_not_abvailable_exc EXCEPTION;
  v_personid_check NUMBER;
  v_kontoid_check NUMBER;  

BEGIN
  -- checking for abvailability
  SELECT COUNT(*)
  INTO i FROM Zimmerbuchungsdetails 
  INNER JOIN Zimmerbuchung USING (BuchungsID)
  WHERE Zimmerbuchungsdetails.ZIMMERNR = in_zimmer
  AND Zimmerbuchungsdetails.CheckIn <= in_checkIn
  AND Zimmerbuchungsdetails.CheckIn >= in_checkOut;
  
  -- to do after check with "i"
  IF (i > 0) THEN
    raise_application_error(-20009, 'Der Zimmer ist für das angegebenen Zeitraum bereits gebucht. Veruschen sie ein anderem CheckIn/CheckOut Datum!');
    
  ELSE
    -- todo: get personid und kontoid von Vor und Nachname
    INSERT INTO Rechnung (RECHNUNGSSUMME, AUSSTELLUNGSDATUM, EMPFAENGERKONTOID, AUSSTELLERKONTOID) VALUES (in_preis, in_buchungsdatum, 502, 500);
    
    -- get rechnungsid
    SELECT RechnungsID INTO v_kontoid_check
    FROM Rechnung 
    WHERE Rechnungssumme = in_preis
    AND Ausstellungsdatum = in_buchungsdatum;

    INSERT INTO Zimmerbuchung(BUCHUNGSDATUM, PERSONID, RECHNUNGSID, BUCHUNGSPREIS)  VALUES (in_buchungsdatum, 1, v_kontoid_check, in_preis);
    
    -- get id der vorherige Buchung
    SELECT BuchungsID INTO v_personid_check
    FROM Zimmerbuchung 
    WHERE Buchungspreis = in_preis
    AND RechnungsID = v_kontoid_check;
    

    INSERT INTO Zimmerbuchungsdetails(ZIMMERNR, BUCHUNGSID, CHECKIN, CHECKOUT, DAUERTAGEN, ANZAHL, PREIS) VALUES (in_zimmer, v_personid_check, in_checkIn, in_checkOut, (in_checkOut - in_checkIn), 1, in_Preis);
    COMMIT;
    RETURN('Zimmerbuchung erfolgreich durchgeführt!');
  END IF;
  
END;
/



-------------------
-- execute procedure
-------------------
SELECT * FROM Zimmerbuchung;
SELECT f_zimmer_abv_check_v(1, sysdate, sysdate, (sysdate + 2), 100) AS Buchungs_Nachricht FROM dual;

