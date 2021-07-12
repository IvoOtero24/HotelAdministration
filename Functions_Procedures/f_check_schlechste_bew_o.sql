/*********************************************************************
/**
/** Function: f_check_schlechste_bew_o
/** In: no input parameter
/** Returns: a Table object with the "worst" reviews (with rating < 5 out of 10)
/** Developer: TCSDeveloper
/** Description: The function searches and returns the worst
/**               reviews given by customers (with rating < 5)
/**
/*********************************************************************/


CREATE OR REPLACE TYPE SchlechteBewertungenObj AS OBJECT
(
  PersonID NUMBER,
  Vorname VARCHAR(50),
  Nachname VARCHAR(50),
  Buchungsdatum DATE,
  ZimmerArt VARCHAR2(50),
  ZimmerNr NUMBER,
  Bewertungskommentar VARCHAR2(50),
  BewertungSscore NUMBER
);
/

--Create a type of your object 
CREATE OR REPLACE TYPE SchlechteBewertungenTable AS TABLE OF SchlechteBewertungenObj;
/


CREATE OR REPLACE FUNCTION f_check_schlechste_bew_o
  RETURN SchlechteBewertungenTable
  PIPELINED
AS
    CURSOR schlechte_bew_cursor   
  IS
    SELECT person.personid, person.Vorname, person.Nachname, Buchungsdatum, ZimmerArt, ZimmerNr, Bewertungskommentar, Bewertung
    FROM Kundenbewertung
    JOIN Person ON Person.PersonID = Kundenbewertung.PersonID
    JOIN Zimmerbuchung USING (BuchungsID)
    JOIN Zimmerbuchungsdetails USING (BuchungsID)
    JOIN Zimmer ON Zimmerbuchungsdetails.ZimmerNr = Zimmer.ZimmerNr
    WHERE Bewertung < 5;
    
BEGIN
	FOR cur_record in schlechte_bew_cursor
	LOOP
	   PIPE ROW (SchlechteBewertungenObj(cur_record.PersonID, cur_record.Vorname, cur_record.Nachname, cur_record.Buchungsdatum, 
	             cur_record.ZimmerArt, cur_record.ZimmerNr, cur_record.Bewertungskommentar, cur_record.Bewertung));
     EXIT WHEN schlechte_bew_cursor%NOTFOUND;
  END LOOP;
  RETURN;
END;
/

-------------------
-- execute procedure
-------------------
SELECT * FROM TABLE (sp_check_schlechste_bew);
